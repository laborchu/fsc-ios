//
// Created by laborchu on 15/8/23.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "RsFscTeacherListCmd.h"
#import "CmdSign.pb.h"
#import "CmdCode.h"
#import "LcFscTeacherListCmd.h"
#import "Scheduler.h"
#import "FscClassUser.pb.h"
#import "FSCTeacher.h"
#import "FscTeacher.pb.h"
#import "PbTransfer.h"
#import "PbFieldDefine.h"
#import "FSCUser.h"


@implementation RsFscTeacherListCmd {

}
- (void)req {
    ALcCmd *cmd = [[[LcFscTeacherListCmd alloc] init] addDescSortWithKey:@"modifiedDate"];
    [cmd setFetchLimit:1];
    NSArray *teacherList = [Scheduler exeLc:cmd];
    SInt64 maxModifiedDate = 0;
    if(teacherList.count>0){
        FSCTeacher *fscTeacher = teacherList[0];
        maxModifiedDate = [fscTeacher.modifiedDate longLongValue];
    }
    FscTeacherPb *fscTeacherPb = [[[FscTeacherPb builder] setModifiedDate:maxModifiedDate] build];
    [super send:FSC_TEACHER_LIST data:fscTeacherPb];
}

- (void)resp:(CmdSignPb *)sign {
    FSCUser *fscUser = [super getFscUser];
    FscTeacherListPb *teacherPbList = [FscTeacherListPb parseFromData:sign.source];
    for (FscTeacherPb *teacherPb in teacherPbList.teacherPb) {
        ALcCmd *cmd = [[[LcFscTeacherListCmd alloc] init] addPredicate:@"id==%lld" argumentArray:@[@(teacherPb.id)]];
        NSArray *teacherList = [Scheduler exeLc:cmd];
        if (teacherList.count>0) {
            FSCTeacher *fscTeacher = teacherList[0];
            [PbTransfer pb:teacherPb vo:fscTeacher fields:FSC_TEACHER_FIELDS];
        }else{
            FSCTeacher *findTeacher = [PbTransfer pb:teacherPb entityName:@"FSCTeacher" fields:FSC_TEACHER_FIELDS];
            [fscUser addTeachersObject:findTeacher];
        }
    }
    [super savaData];
}

- (NSString *)getCmdCode {
    return FSC_TEACHER_LIST;
}

@end
