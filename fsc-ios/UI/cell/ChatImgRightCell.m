//
//  ChatImgRightCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/17.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatImgRightCell.h"

@interface ChatImgRightCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet UIImageView *msgImg;
@end

@implementation ChatImgRightCell{
    UIImage *_mask;
}

- (void)awakeFromNib {
    _mask = [ [UIImage imageNamed:@"chat_right_mask"] resizableImageWithCapInsets:UIEdgeInsetsMake(30, 10, 10, 15)];
    _mask = [super dealWithImage:_mask];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state chat_left_bubble
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.avatarImg setImage:[UIImage imageNamed:@"default_avatar"]];
    self.nameLabel.text = @"李四";

    UIImage *image = [super dealWithImage:[UIImage imageNamed:@"msg_tmp@2x.jpg"]];
    UIImage *maskedImage = [super maskImage:image withMask:_mask];
    [self.msgImg setImage:maskedImage];
}


@end
