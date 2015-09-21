//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "PublicChatHandler.h"
#import "ALcCmd.h"
#import "LcFscChatPublicRecorderListCmd.h"
#import "Scheduler.h"
#import "FSCSession.h"
#import "FSCPublicRecorder.h"
#import "FscChatRecorder.h"


@implementation PublicChatHandler {

}

- (NSArray *)getRecorderList:(NSNumber *)lastId {
    ALcCmd *cmd = [[LcFscChatPublicRecorderListCmd alloc] initWithFscPSession:self.fscSession.psession];
    if(lastId){
        [cmd addPredicate:@"id>%lld" argumentArray:@[lastId]];
    }
    [cmd addDescSortWithKey:@"id"];
    [cmd setFetchLimit:18];
    NSArray *array = [Scheduler exeLc:cmd];
    return [[array reverseObjectEnumerator] allObjects];
}

//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(FSCPublicRecorder *)fscRecorder{
    FscChatRecorder *recorder = [FscChatRecorder alloc];
    recorder.id = fscRecorder.id;
    recorder.uuid = fscRecorder.uuid;
    recorder.createdBy = fscRecorder.fromUserId;
    recorder.type = fscRecorder.type;
    recorder.message = fscRecorder.message;
    recorder.fromType = fscRecorder.fromType;
    recorder.createdDate = fscRecorder.createdDate;
    recorder.timestamp = fscRecorder.timestamp;
    recorder.status = fscRecorder.status;
    return recorder;
}

@end
