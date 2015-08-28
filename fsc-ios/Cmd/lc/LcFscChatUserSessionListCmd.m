//
// Created by laborchu on 15/8/25.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatUserSessionListCmd.h"
#import "FSCSession.h"


@implementation LcFscChatUserSessionListCmd {
    FSCSession *_fscSession;
}

- (LcFscChatUserSessionListCmd *)initWithFscSession:(FSCSession *)fscSession{
    _fscSession = fscSession;
    return (LcFscChatUserSessionListCmd *) [super init];
}

- (id)execute {
    NSPredicate *sessionPd = [NSPredicate predicateWithFormat:@"fscSession == %@ ", _fscSession];
    NSFetchRequest *request = [super buildRequest:@"FSCUserSession" parentPred:sessionPd];
    return [super query:request];
}

@end
