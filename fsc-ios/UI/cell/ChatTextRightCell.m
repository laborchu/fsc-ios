//
//  ChatTextRightCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/15.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ChatTextRightCell.h"
#import "FSCChatLabel.h"
#import "FscChatRecorder.h"
#import "BbiUtils.h"
#import "ChatCell+Right.h"

@interface ChatTextRightCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet FSCChatLabel *msgLabel;

@end

@implementation ChatTextRightCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [ChatCell setRecorder:recorder avatar:self.avatarImg];
    self.msgLabel.text = recorder.message;
}

@end
