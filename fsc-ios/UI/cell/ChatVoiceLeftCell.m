//
//  ChatVoiceLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/21.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatVoiceLeftCell.h"
#import "AChatHandler.h"

@interface ChatVoiceLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@end

@implementation ChatVoiceLeftCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.chatHandler setRecorder:recorder avatarImg:_avatarImg nameLabel:_nameLabel];
}

@end
