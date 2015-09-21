//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "GroupChatHandler.h"
#import "ALcCmd.h"
#import "LcFscChatGroupRecorderListCmd.h"
#import "FSCSession.h"
#import "Scheduler.h"
#import "FSCPublicRecorder.h"
#import "FscChatRecorder.h"
#import "FSCGroupRecorder.h"


@implementation GroupChatHandler {

}

- (NSArray *)getRecorderList:(NSNumber *)lastId {
    ALcCmd *cmd = [[LcFscChatGroupRecorderListCmd alloc] initWithFscGSession:self.fscSession.gsession];
    if(lastId){
        [cmd addPredicate:@"id>%lld" argumentArray:@[lastId]];
    }
    [cmd addDescSortWithKey:@"id"];
    [cmd setFetchLimit:18];
    NSArray *array = [Scheduler exeLc:cmd];
    return [[array reverseObjectEnumerator] allObjects];
}

//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(FSCGroupRecorder *)fscRecorder{
    FscChatRecorder *recorder = [FscChatRecorder alloc];
    recorder.id = fscRecorder.id;
    recorder.uuid = fscRecorder.uuid;
    recorder.createdBy = fscRecorder.createdBy;
    recorder.type = fscRecorder.type;
    recorder.voiceLength = fscRecorder.voiceLength;
    recorder.message = fscRecorder.message;
    recorder.createdDate = fscRecorder.createdDate;
    recorder.status = fscRecorder.status;
    return recorder;
}

@end
