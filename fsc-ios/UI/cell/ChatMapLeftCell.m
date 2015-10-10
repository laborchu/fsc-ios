//
//  ChatMapLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/28.
//  Copyright © 2015年 laborc. All rights reserved.
//

#import "ChatMapLeftCell.h"
#import "AChatHandler.h"
#import "FscChatRecorder.h"
#import "LocationModel.h"

@interface ChatMapLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet UILabel *mapLabel;
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
    NSError* err = nil;
    LocationModel * locationModel = [[LocationModel alloc] initWithString:recorder.message error:&err];
    if(!err){
        _mapLabel.text = locationModel.locationAddress;
    }
}


@end
