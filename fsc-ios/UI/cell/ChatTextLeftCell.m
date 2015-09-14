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


@interface ChatTextLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet FSCChatLabel *msgLabel;

@end

@implementation ChatTextLeftCell

- (void)awakeFromNib {
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.avatarImg setImage:[UIImage imageNamed:@"default_avatar"]];
    self.nameLabel.text = @"张三";
    self.msgLabel.text = recorder.message;
}

@end
