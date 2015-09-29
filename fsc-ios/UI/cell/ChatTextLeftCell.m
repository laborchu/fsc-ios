//
//  ChatTextLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/13.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatTextLeftCell.h"
#import "FscChatRecorder.h"
#import "FSCChatLabel.h"
#import "AChatHandler.h"


@interface ChatTextLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet FSCChatLabel *msgLabel;

@end

@implementation ChatTextLeftCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.chatHandler setRecorder:recorder avatarImg:_avatarImg nameLabel:_nameLabel];
    self.msgLabel.text = recorder.message;
}

@end
