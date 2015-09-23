//
// Created by laborchu on 15/9/23.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatCell.h"

@class FscChatRecorder;

@interface ChatCell (Right)
+ (void)setRecorder:(FscChatRecorder *)recorder avatar:(UIImageView *)avatar;
@end
