//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FscChatRecorder;
@class AChatHandler;

@interface ChatCell : UITableViewCell
@property(nonatomic, strong) AChatHandler *chatHandler;

- (void)setRecorder:(FscChatRecorder *)recorder;
@end
