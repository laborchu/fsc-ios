//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ClassChatHandler.h"
#import "ALcCmd.h"
#import "LcFscChatClassRecorderListCmd.h"
#import "FSCSession.h"
#import "Scheduler.h"
#import "FSCClassRecorder.h"
#import "FscChatRecorder.h"
#import "FSCClass.h"
#import "LcUtils.h"
#import "FSCClassUser.h"
#import "BbiUtils.h"


@implementation ClassChatHandler {

}

- (NSArray *)getRecorderList:(NSNumber *)lastId {
    ALcCmd *cmd = [[LcFscChatClassRecorderListCmd alloc] initWithFscCSession:self.fscSession.csession];
    if(lastId){
        [cmd addPredicate:@"id>%lld" argumentArray:@[lastId]];
    }
    [cmd addDescSortWithKey:@"id"];
    [cmd setFetchLimit:18];
    NSArray *array = [Scheduler exeLc:cmd];
    return [[array reverseObjectEnumerator] allObjects];
}

//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(FSCClassRecorder *)fscRecorder{
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

/**
 * 设置头像和名字
 */
-(void)setRecorder:(FscChatRecorder *)recorder avatarImg:(UIImageView *)avatarImg nameLabel:(UILabel *)nameLabel{
    FSCClass *userClass = [LcUtils getFscClass:self.fscSession.msId];
    NSString *portrait;
    if(userClass){
        FSCClassUser *fscClassUser = [LcUtils getFscClassUser:recorder.createdBy fscClass:userClass];
        portrait = fscClassUser.portrait;
        nameLabel.text = fscClassUser.name;
    }
    [avatarImg setImageWithURL:[BbiUtils getResImgUrl:portrait] placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
}

@end
