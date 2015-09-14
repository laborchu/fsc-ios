//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FscChatRecorder;

@interface ChatCell : UITableViewCell
- (void)setRecorder:(FscChatRecorder *)recorder;
-(CGFloat)getHeight;
@end
