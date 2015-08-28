//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatGroupRecorderListCmd.h"
#import "FSCGroupSession.h"


@implementation LcFscChatGroupRecorderListCmd {
    FSCGroupSession *_fscGroupSession;
}

- (LcFscChatGroupRecorderListCmd *)initWithFscGSession:(FSCGroupSession *)fscGSession{
    _fscGroupSession = fscGSession;
    return (LcFscChatGroupRecorderListCmd *) [super init];
}

- (id)execute {
    NSPredicate *gSessionPd = [NSPredicate predicateWithFormat:@"gSession == %@ ", _fscGroupSession];
    NSFetchRequest *request = [super buildRequest:@"FSCGroupRecorder" parentPred:gSessionPd];
    return [super query:request];
}
@end
