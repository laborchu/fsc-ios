//
// Created by laborchu on 15/8/24.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALcCmd.h"

@class FSCPublicUser;


@interface LcFscPublicMenuListCmd : ALcCmd
- (LcFscPublicMenuListCmd *)initWithFscPublicUser:(FSCPublicUser *)fscPublicUser;
@end
