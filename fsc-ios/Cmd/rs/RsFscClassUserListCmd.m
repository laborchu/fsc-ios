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
                if ([fscClassStudent.modifiedDate longLongValue] > userModifiedDate) {
                    studentModifiedDate = [fscClassStudent.modifiedDate longLongValue];
                }
            }
        }
    }

    [super send:FSC_CLASS_LIST data:nil];
}

- (void)resp:(CmdSignPb *)sign {
}

@end
