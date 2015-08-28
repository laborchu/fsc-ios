//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatGroupUserListCmd.h"
#import "FSCGroupSession.h"


@implementation LcFscChatGroupUserListCmd {
    FSCGroupSession *_fscGroupSession;
}

- (LcFscChatGroupUserListCmd *)initWithFscGSession:(FSCGroupSession *)fscGSession{
    _fscGroupSession = fscGSession;
    return (LcFscChatGroupUserListCmd *) [super init];
}

- (id)execute {
    NSPredicate *gSessionPd = [NSPredicate predicateWithFormat:@"gSession == %@ ", _fscGroupSession];
    NSFetchRequest *request = [super buildRequest:@"FSCGroupUser" parentPred:gSessionPd];
    return [super query:request];
}
@end
