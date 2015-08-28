//
// Created by laborchu on 15/8/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatClassRecorderListCmd.h"
#import "FSCClassSession.h"


@implementation LcFscChatClassRecorderListCmd {
    FSCClassSession *_fscClassSession;
}

- (LcFscChatClassRecorderListCmd *)initWithFscCSession:(FSCClassSession *)fscCSession{
    _fscClassSession = fscCSession;
    return (LcFscChatClassRecorderListCmd *) [super init];
}

- (id)execute {
    NSPredicate *cSessionPd = [NSPredicate predicateWithFormat:@"cSession == %@ ", _fscClassSession];
    NSFetchRequest *request = [super buildRequest:@"FSCClassRecorder" parentPred:cSessionPd];
    return [super query:request];
}
@end
