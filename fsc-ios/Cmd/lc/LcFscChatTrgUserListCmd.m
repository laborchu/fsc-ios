//
// Created by laborchu on 15/8/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatTrgUserListCmd.h"
#import "FSCTrgSession.h"


@implementation LcFscChatTrgUserListCmd {
    FSCTrgSession *_fscTrgSession;
}

- (LcFscChatTrgUserListCmd *)initWithFscTSession:(FSCTrgSession *)fscTSession{
    _fscTrgSession = fscTSession;
    return (LcFscChatTrgUserListCmd *) [super init];
}

- (id)execute {
    NSPredicate *tSessionPd = [NSPredicate predicateWithFormat:@"tSession == %@ ", _fscTrgSession];
    NSFetchRequest *request = [super buildRequest:@"FSCTrgUser" parentPred:tSessionPd];
    return [super query:request];
}
@end
