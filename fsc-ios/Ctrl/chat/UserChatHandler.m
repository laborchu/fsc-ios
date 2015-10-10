//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "UserChatHandler.h"
#import "LcFscChatUserRecorderListCmd.h"
#import "FSCSession.h"
#import "Scheduler.h"
#import "FSCUserRecorder.h"
#import "FscChatRecorder.h"
#import "FSCLinkman.h"
#import "LcUtils.h"
#import "BbiUtils.h"


@implementation UserChatHandler {

}

- (NSArray *)getRecorderList:(NSNumber *)lastId {
    ALcCmd *cmd = [[LcFscChatUserRecorderListCmd alloc] initWithFscUSession:self.fscSession.usession];
    if(lastId){
        [cmd addPredicate:@"id>%lld" argumentArray:@[lastId]];
    }
    [cmd addDescSortWithKey:@"id"];
    [cmd setFetchLimit:18];
    NSArray *array = [Scheduler exeLc:cmd];
    return [[array reverseObjectEnumerator] allObjects];
}


//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(FSCUserRecorder *)fscRecorder{
    FscChatRecorder *recorder = [FscChatRecorder alloc];
    recorder.id = fscRecorder.id;
    recorder.uuid = fscRecorder.uuid;
    recorder.createdBy = fscRecorder.fromUserId;
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
    nameLabel.hidden = YES;
    FSCLinkman *fscLinkman = [LcUtils getFscLinkman:recorder.createdBy];
    NSString *portrait;
    if(fscLinkman){
        portrait = fscLinkman.portrait;
    }
    [avatarImg setImageWithURL:[BbiUtils getResImgUrl:portrait] placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];

}

@end
