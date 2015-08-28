//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatUserRecorderListCmd.h"
#import "FSCUserSession.h"


@implementation LcFscChatUserRecorderListCmd {
    FSCUserSession *_fscUserSession;
}

- (LcFscChatUserRecorderListCmd *)initWithFscUSession:(FSCUserSession *)fscUSession{
    _fscUserSession = fscUSession;
    return (LcFscChatUserRecorderListCmd *) [super init];
}

- (id)execute {
    NSPredicate *uSessionPd = [NSPredicate predicateWithFormat:@"uSession == %@ ", _fscUserSession];
    NSFetchRequest *request = [super buildRequest:@"FSCUserRecorder" parentPred:uSessionPd];
    return [super query:request];
}
@end
