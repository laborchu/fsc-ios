//
//  ChatMapLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/28.
//  Copyright © 2015年 laborc. All rights reserved.
//

#import "ChatMapLeftCell.h"
#import "AChatHandler.h"

@interface ChatMapLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@end

@implementation ChatMapLeftCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.chatHandler setRecorder:recorder avatarImg:_avatarImg nameLabel:_nameLabel];
}


@end
