//
// Created by laborchu on 15/8/24.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "RsFscPublicUserListCmd.h"
#import "CmdSign.pb.h"
#import "LcFscPublicUserListCmd.h"
#import "Scheduler.h"
#import "FSCPublicUser.h"
#import "FscChatPublic.pb.h"
#import "CmdCode.h"
#import "PbTransfer.h"
#import "PbFieldDefine.h"
#import "FSCUser.h"
#import "LcFscPublicMenuListCmd.h"
#import "FSCPublicMenu.h"
#import "LcUtils.h"


@implementation RsFscPublicUserListCmd {

}
- (void)req {
    ALcCmd *cmd = [[[LcFscPublicUserListCmd alloc] init] addDescSortWithKey:@"modifiedDate"];
    [cmd setFetchLimit:1];
    NSArray *publicUserArray = [Scheduler exeLc:cmd];
    SInt64 maxModifiedDate = 0;
    if(publicUserArray.count>0){
        FSCPublicUser *fscPublicUser = publicUserArray[0];
        maxModifiedDate = [fscPublicUser.modifiedDate longLongValue];
    }
    PUserPb *pUserPb = [[[PUserPb builder] setModifiedDate:maxModifiedDate] build];
    [super send:FSC_PUBLIC_USER_LIST data:pUserPb];

}

- (void)resp:(CmdSignPb *)sign {
    FSCUser *fscUser = [super getFscUser];
    PUserListPb *userListPb = [PUserListPb parseFromData:sign.source];
    for (PUserPb *pUserPb in userListPb.userPb) {
        FSCPublicUser *fscPublicUser = [LcUtils getFscPublicUser:@(pUserPb.id)];
        if(fscPublicUser){
            [PbTransfer pb:pUserPb vo:fscPublicUser fields:CHAT_PUBLIC_USER_FIELDS];
        }else{
            fscPublicUser = [PbTransfer pb:pUserPb entityName:@"FSCPublicUser" fields:CHAT_PUBLIC_USER_FIELDS];
            [fscUser addPublicUsersObject:fscPublicUser];
        }

        for (PMenuPb *pMenuPb in pUserPb.menuPb) {
            FSCPublicMenu *fscPublicMenu = [LcUtils getFscPublicMenu:fscPublicUser menuId:@(pMenuPb.id)];
            if(fscPublicMenu){
                [PbTransfer pb:pMenuPb vo:fscPublicMenu fields:CHAT_PUBLIC_MENU_FIELDS];
            }else{
                fscPublicMenu = [PbTransfer pb:pMenuPb entityName:@"FSCPublicMenu" fields:CHAT_PUBLIC_MENU_FIELDS];
                [fscPublicUser addMenusObject:fscPublicMenu];
            }
        }
    }
    [super savaData];
}

@end
