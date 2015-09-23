//
//  ChatVoiceRightCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/21.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatVoiceRightCell.h"
#import "ChatCell+Right.h"

@interface ChatVoiceRightCell ()

@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;

@end

@implementation ChatVoiceRightCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [ChatCell setRecorder:recorder avatar:self.avatarImg];
}

@end
