//
//  FscSessionCell.h
//  fsc-ios
//
//  Created by laborchu on 15/9/1.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FSCSession;

@interface FscSessionCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *sessionAvatar;
@property (weak, nonatomic) IBOutlet UILabel *sessionName;
@property (weak, nonatomic) IBOutlet UILabel *lastMsg;
@property (weak, nonatomic) IBOutlet UILabel *lastMsgDate;
@property (weak, nonatomic) IBOutlet UIImageView *sessionStatusImg;
@property (weak, nonatomic) IBOutlet UIView *badgeView;

- (void)setCellWithSession:(FSCSession *)session;
@end
