//
// Created by laborchu on 15/8/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatTrgRecorderListCmd.h"
#import "FSCTrgSession.h"


@implementation LcFscChatTrgRecorderListCmd {
    FSCTrgSession *_fscTrgSession;
}

- (LcFscChatTrgRecorderListCmd *)initWithFscTSession:(FSCTrgSession *)fscTSession{
    _fscTrgSession = fscTSession;
    return (LcFscChatTrgRecorderListCmd *) [super init];
}

- (id)execute {
    NSPredicate *tSessionPd = [NSPredicate predicateWithFormat:@"tSession == %@ ", _fscTrgSession];
    NSFetchRequest *request = [super buildRequest:@"FSCTrgRecorder" parentPred:tSessionPd];
    return [super query:request];
}
@end
