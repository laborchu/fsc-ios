//
// Created by laborchu on 15/8/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALcCmd.h"

@class FSCTrgSession;


@interface LcFscChatTrgUserListCmd : ALcCmd
- (LcFscChatTrgUserListCmd *)initWithFscTSession:(FSCTrgSession *)fscTSession;
@end
