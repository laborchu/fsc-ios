//
// Created by laborchu on 15/7/27.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "RsSessionPostCmd.h"
#import "CmdCode.h"
#import "Login.pb.h"
#import "IosUtils.h"
#import "User.pb.h"
#import "CmdSign.pb.h"
#import "PbTransfer.h"
#import "FSCUser.h"
#import "PbFieldDefine.h"
#import "FscDataManager.h"
#import "LcFscUserGetCmd.h"
#import "Scheduler.h"
#import "FSCEnum.h"
#import "FSCClass.h"
#import "FSCUserStudent.h"
#import "MsgCode.h"
#import "FscAppDelegate.h"

@implementation RsSessionPostCmd

- (RsSessionPostCmd *)initUsername:(NSString *)username pwd:(NSString *)pwd {
    self.username = username;
    self.password = pwd;
    return self;
}

-(void) req{
    LoginPb *loginPb = [[[[[LoginPb builder] setLoginName:self.username]
            setPassword:self.password]
            setPhoneInfo:[IosUtils getDeviceInfo]]
            build];
    [super send:SESSION_POST data:loginPb];
}

- (void)resp:(CmdSignPb *)sign {
    if([sign.respCode isEqualToString:@"SUCCESS"]){
        UserPb *user = [UserPb parseFromData:sign.source];

        FscDataManager *manager = [FscDataManager getManager];
        manager.dbName = user.uuid;

        NSArray *userList = [Scheduler exeLc:[[LcFscUserGetCmd alloc] initUserId:(SInt64 *) user.id]];
        FSCUser *fscUser;
        if(userList.count>0){
            fscUser = userList.firstObject;
            [PbTransfer pb:user vo:fscUser fields:PB_USER_FIELDS];
        }else{
            fscUser = [PbTransfer pb:user entityName:@"FSCUser" fields:PB_USER_FIELDS];
        }
        NSArray *userClassArray;
        NSArray *studentArray;
        if (user.userType == USER_TEACHER){
            userClassArray = user.teacherPb.classPbList;
        }else{
            userClassArray = user.parentsPb.classPbList;
            studentArray = user.parentsPb.studentPbList;
        }
        for (FscClassPb *classPb in userClassArray) {
            FSCClass *myclass;
            for (FSCClass *fscClass in fscUser.classes) {
                if([fscClass.id isEqualToNumber:@(classPb.id)]){
                    myclass = fscClass;
                    break;
                }
            }
            if (myclass) {
                [PbTransfer pb:classPb vo:myclass fields:PB_CLASS_FIELDS];
            }else{
                myclass = [PbTransfer pb:classPb entityName:@"FSCClass" fields:PB_CLASS_FIELDS];
                [fscUser addClassesObject:myclass];
            }
        }
        if(studentArray){
            for (StudentPb *studentPb in studentArray) {
                FSCUserStudent *findStudent;
                for (FSCUserStudent *student in fscUser.students) {
                    if([student.id isEqualToNumber:@(studentPb.id)]){
                        findStudent = student;
                        break;
                    }
                }
                if(findStudent){
                    [PbTransfer pb:studentPb vo:findStudent fields:PB_STUDENT_FIELDS];
                }else{
                    findStudent = [PbTransfer pb:studentPb entityName:@"FSCUserStudent" fields:PB_CLASS_FIELDS];
                }
            }
        }

        [super savaData];

        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:fscUser.username forKey:@"userName"];
        [defaults setObject:fscUser.password forKey:@"password"];
        [defaults setObject:fscUser.token forKey:@"token"];
        [defaults setBool:YES forKey:@"auto"];

        FscAppDelegate *fscAppDelegate = [IosUtils getApp];
        fscAppDelegate.fscUser = fscUser;

        [[NSNotificationCenter defaultCenter] postNotificationName:LOGIN_CODE object:nil];

    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:LOGIN_CODE object:nil userInfo:@{@"msg":sign.msg}];
    }

}


- (BOOL)isSingleReq {
    return YES;
}
-(NSString *) getCmdCode{
    return SESSION_POST;
}

@end
