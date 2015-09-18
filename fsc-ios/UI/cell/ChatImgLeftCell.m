//
//  ChatImgLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/15.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatImgLeftCell.h"


@interface ChatImgLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet UIImageView *msgImg;
@end

@implementation ChatImgLeftCell{
    UIImage *_mask;
}

- (void)awakeFromNib {
    _mask = [ [UIImage imageNamed:@"chat_left_mask"] resizableImageWithCapInsets:UIEdgeInsetsMake(30, 10, 10, 10)];
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
