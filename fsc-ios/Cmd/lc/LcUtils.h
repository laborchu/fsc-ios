//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FSCLinkman;
@class FSCPublicUser;
@class FSCPublicMenu;


@interface LcUtils : NSObject

+ (FSCLinkman *)getFscLinkman:(NSNumber *)linkmanId;

+ (FSCPublicUser *)getFscPublicUser:(NSNumber *)userId;

+ (FSCPublicMenu *)getFscPublicMenu:(FSCPublicUser *)publicUser menuId:(NSNumber *)menuId;
@end
