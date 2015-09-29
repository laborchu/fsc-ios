//
// Created by laborchu on 15/8/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "RsFscClassUserListCmd.h"
#import "CmdSign.pb.h"
#import "CmdCode.h"
#import "FSCUser.h"
#import "FSCClass.h"
#import "LcFscClassUserListCmd.h"
#import "Scheduler.h"
#import "FSCClassUser.h"
#import "LcFscClassStudentListCmd.h"
#import "FSCClassStudent.h"
#import "FscClassUser.pb.h"
#import "LcFscClassListCmd.h"
#import "PbTransfer.h"
#import "PbFieldDefine.h"
#import "LcUtils.h"


@implementation RsFscClassUserListCmd {

}
- (void)req {
    FSCUser *fscUser = [super getFscUser];
    NSMutableArray *classArray = (id) fscUser.classes;
    NSMutableArray *idsArray = [NSMutableArray array];
    SInt64 userModifiedDate = 0L;
    SInt64 studentModifiedDate = 0;
    if(classArray.count > 0){
        for (FSCClass *class_ in classArray) {
            NSString *classIdsString = [NSString stringWithFormat:@"%@,",class_.id];

            ALcCmd *fscClassUserListCmd = [[[LcFscClassUserListCmd alloc] initWithFscClass:class_]
                    addDescSortWithKey:@"modifiedDate"];
            NSArray *fscClassUserList = [Scheduler exeLc:fscClassUserListCmd];
            for (FSCClassUser *fscClassUser in fscClassUserList) {
                classIdsString = [classIdsString stringByAppendingString:[NSString stringWithFormat:@"%@,",fscClassUser.id]];
                if ([fscClassUser.modifiedDate longLongValue] > userModifiedDate) {
                    userModifiedDate = [fscClassUser.modifiedDate longLongValue];
                }
            }
            classIdsString = [classIdsString substringWithRange:NSMakeRange(0, classIdsString.length - 1)];
            [idsArray addObject:classIdsString];

            ALcCmd *lcFscClassStudentListCmd = [[[LcFscClassStudentListCmd alloc] initWithFscClass:class_]
                    addDescSortWithKey:@"modifiedDate"];
            [lcFscClassStudentListCmd setFetchLimit:1];
            NSArray *fscClassStudentList = [Scheduler exeLc:lcFscClassStudentListCmd];
            if(fscClassStudentList.count>0){
                FSCClassStudent *fscClassStudent = fscClassStudentList[0];
                if ([fscClassStudent.modifiedDate longLongValue] > studentModifiedDate) {
                    studentModifiedDate = [fscClassStudent.modifiedDate longLongValue];
                }
            }
        }
    }
    ClassUserListPb *classUser = [[[[[ClassUserListPb builder] setClassUserIdsArray:idsArray]
            setUserModifiedDate:userModifiedDate]
            setStudentModifiedDate:studentModifiedDate] build];
    [super send:FSC_CLASS_USER_LIST data:classUser];
}

- (void)resp:(CmdSignPb *)sign {
    FSCUser *fscUser = [self getFscUser];
    ClassUserListPb *classUserList = [ClassUserListPb parseFromData:sign.source];
    //classUser
    for (ClassUserPb *classUserPb in classUserList.classUser) {
        //找到所属班级
        FSCClass *userClass = [LcUtils getFscClass:@(classUserPb.classId)];
        if(userClass){
            FSCClassUser *findUser = [LcUtils getFscClassUser:@(classUserPb.id) fscClass:userClass];
            if (findUser) {
                [PbTransfer pb:classUserPb vo:findUser fields:FSC_CLASS_USER_FIELDS];
            }else{
                findUser = [PbTransfer pb:classUserPb entityName:@"FSCClassUser" fields:FSC_CLASS_USER_FIELDS];
                [userClass addClassUsersObject:findUser];
            }
        }
    }

    //classStudent
    for (ClassStudentPb *classStudentPb in classUserList.classStudent) {
        ALcCmd *cmd = [[[LcFscClassListCmd alloc] init]
                addPredicate:@"id==%lld" argumentArray:@[@(classStudentPb.classId)]];
        NSArray *fscClassList = [Scheduler exeLc:cmd];

        if (fscClassList.count>0) {
            //找到所属班级
            FSCClass *userClass = fscClassList[0];


            ALcCmd *classStudentListCmd = [[[LcFscClassStudentListCmd alloc] initWithFscClass:userClass]
                    addPredicate:@"id==%lld" argumentArray:@[@(classStudentPb.id)]];
            NSArray *fscClassUserList = [Scheduler exeLc:classStudentListCmd];

            if (fscClassUserList.count>0) {
                FSCClassStudent *findStudent = fscClassUserList[0];
                [PbTransfer pb:classStudentPb vo:findStudent fields:FSC_CLASS_STUDENT_FIELDS];
            }else{
                FSCClassStudent *findStudent = [PbTransfer pb:classStudentPb entityName:@"FSCClassStudent" fields:FSC_CLASS_STUDENT_FIELDS];
                [userClass addClassStudentsObject:findStudent];
            }
        }
    }
    [super savaData];
}

@end
