//
//  ChatImgRightCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/17.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ChatImgRightCell.h"
#import "FscChatRecorder.h"
#import "BbiUtils.h"
#import "ChatCell+Img.h"
#import "ChatCell+Right.h"

@interface ChatImgRightCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UIImageView *msgImg;
@end

@implementation ChatImgRightCell{
    UIImage *_mask;
}

- (void)awakeFromNib {
    _mask = [ [UIImage imageNamed:@"chat_right_mask"] resizableImageWithCapInsets:UIEdgeInsetsMake(30, 10, 10, 15)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [ChatCell setRecorder:recorder avatar:self.avatarImg];
    NSURL *address = [BbiUtils getResImgUrl:recorder.message];
    [ChatCell setImg:address mask:_mask imgView:_msgImg];
}


@end
