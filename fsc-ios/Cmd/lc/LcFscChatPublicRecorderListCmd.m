//
// Created by laborchu on 15/8/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscChatPublicRecorderListCmd.h"
#import "FSCPublicSession.h"


@implementation LcFscChatPublicRecorderListCmd {
    FSCPublicSession *_fscPublicSession;
}

- (LcFscChatPublicRecorderListCmd *)initWithFscPSession:(FSCPublicSession *)fscPSession{
    _fscPublicSession = fscPSession;
    return (LcFscChatPublicRecorderListCmd *) [super init];
}

- (id)execute {
    NSPredicate *gSessionPd = [NSPredicate predicateWithFormat:@"pSession == %@ ", _fscPublicSession];
    NSFetchRequest *request = [super buildRequest:@"FSCPublicRecorder" parentPred:gSessionPd];
    return [super query:request];
}
@end
