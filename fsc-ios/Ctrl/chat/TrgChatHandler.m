//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "TrgChatHandler.h"
#import "ALcCmd.h"
#import "LcFscChatTrgRecorderListCmd.h"
#import "FSCSession.h"
#import "Scheduler.h"
#import "FSCTrgRecorder.h"
#import "FscChatRecorder.h"
#import "LcUtils.h"
#import "FSCLinkman.h"
#import "FSCTrgUser.h"
#import "BbiUtils.h"


@implementation TrgChatHandler {

}
- (NSArray *)getRecorderList:(NSNumber *)lastId {
    ALcCmd *cmd = [[LcFscChatTrgRecorderListCmd alloc] initWithFscTSession:self.fscSession.tsession];
    if(lastId){
        [cmd addPredicate:@"id>%lld" argumentArray:@[lastId]];
    }
    [cmd addDescSortWithKey:@"id"];
    [cmd setFetchLimit:18];
    NSArray *array = [Scheduler exeLc:cmd];
    return [[array reverseObjectEnumerator] allObjects];
}

//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(FSCTrgRecorder *)fscRecorder{
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
 * 获取创建者头像
 */
-(id)setRecorder:(FscChatRecorder *)recorder{
    return [LcUtils getFscTrgUser:recorder.createdBy fscClass:self.fscSession.tsession];
}

/**
 * 设置头像和名字
 */
-(void)setRecorder:(FscChatRecorder *)recorder avatarImg:(UIImageView *)avatarImg nameLabel:(UILabel *)nameLabel{
    FSCTrgUser *fscTrgUser = [LcUtils getFscTrgUser:recorder.createdBy fscClass:self.fscSession.tsession];
    NSString *portrait;
    if(fscTrgUser){
        portrait = fscTrgUser.portrait;
        nameLabel.text = fscTrgUser.name;
    }
    [avatarImg setImageWithURL:[BbiUtils getResImgUrl:portrait] placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
}

@end
