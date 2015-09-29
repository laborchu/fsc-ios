//
//  ChatImgLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/15.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ChatImgLeftCell.h"
#import "FscChatRecorder.h"
#import "ChatCell+Img.h"
#import "BbiUtils.h"
#import "AChatHandler.h"


@interface ChatImgLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet UIImageView *msgImg;
@end

@implementation ChatImgLeftCell{
    UIImage *_mask;
}

- (void)awakeFromNib {
    _mask = [ [UIImage imageNamed:@"chat_left_mask"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 5, 5, 5)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.chatHandler setRecorder:recorder avatarImg:_avatarImg nameLabel:_nameLabel];

    NSURL *address = [BbiUtils getResImgUrl:recorder.message];
    [ChatCell setImg:address mask:_mask imgView:_msgImg];
}



@end
