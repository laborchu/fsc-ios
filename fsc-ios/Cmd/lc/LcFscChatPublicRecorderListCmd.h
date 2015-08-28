//
// Created by laborchu on 15/8/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALcCmd.h"

@class FSCPublicSession;


@interface LcFscChatPublicRecorderListCmd : ALcCmd
- (LcFscChatPublicRecorderListCmd *)initWithFscPSession:(FSCPublicSession *)fscPSession;
@end
