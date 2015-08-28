//
// Created by laborchu on 15/8/25.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALcCmd.h"

@class FSCSession;


@interface LcFscChatUserSessionListCmd : ALcCmd
- (LcFscChatUserSessionListCmd *)initWithFscSession:(FSCSession *)fscSession;
@end
