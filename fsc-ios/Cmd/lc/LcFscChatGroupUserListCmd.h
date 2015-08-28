//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALcCmd.h"

@class FSCGroupSession;


@interface LcFscChatGroupUserListCmd : ALcCmd
- (LcFscChatGroupUserListCmd *)initWithFscGSession:(FSCGroupSession *)fscGSession;
@end
