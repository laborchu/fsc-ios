//
// Created by laborchu on 15/8/8.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "RsFscLinkmanListCmd.h"
#import "Scheduler.h"
#import "LcFscLinkmanListCmd.h"
#import "FSCLinkman.h"
#import "FscLinkman.pb.h"
#import "FSCUser.h"
#import "CmdCode.h"
#import "CmdSign.pb.h"
#import "DataCache.h"
#import "PbTransfer.h"
#import "PbFieldDefine.h"
#import "MsgCode.h"


@implementation RsFscLinkmanListCmd {

}

- (void)req {

    ALcCmd *cmd = [[[LcFscLinkmanListCmd alloc] init]
            addDescSortWithKey:@"timestamp"];
    [cmd setFetchLimit:1];
    NSArray *userList = [Scheduler exeLc:cmd];

    FSCUser *fscUser = [super getFscUser];
    LinkmanListPb_Builder *build = [LinkmanListPb builder];
    [build setUserId:[fscUser.id longLongValue]];
    if (userList.count > 0) {
        FSCLinkman *fscLinkman = userList[0];
        [build setTimestamp:[fscLinkman.timestamp longLongValue]];

        [cmd clearSort];
        [cmd addDescSortWithKey:@"modifiedDate"];
        userList = [Scheduler exeLc:cmd];
        fscLinkman = userList[0];
        [build setModifiedDate:[fscLinkman.modifiedDate longLongValue]];
    }
    LinkmanListPb *linkmanListPb = [build build];
    [super send:FSC_LINKMAN_LIST data:linkmanListPb];
}

- (void)resp:(CmdSignPb *)sign {
    FSCUser *fscUser = [super getFscUser];
    LinkmanListPb *linkmanListPb = [LinkmanListPb parseFromData:sign.source];
    for (LinkmanPb *linkmanPb in linkmanListPb.linkmanList) {
        FSCLinkman *fscLinkman = [DataCache getFSCLinkman:@(linkmanPb.id)];
        if (fscLinkman) {
            [PbTransfer pb:linkmanPb vo:fscLinkman fields:LINKMAN_FIELDS];
        } else {
            fscLinkman = [PbTransfer pb:linkmanPb entityName:@"FSCLinkman" fields:LINKMAN_FIELDS];
            [fscUser addLinkmanListObject:fscLinkman];
        }
    }
    [super savaData];
    [[NSNotificationCenter defaultCenter] postNotificationName:MSG_LINKMAN_LIST object:nil];
}

- (NSString *)getCmdCode {
    return FSC_LINKMAN_LIST;
}


@end
