//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FSCLinkman;
@class FSCPublicUser;
@class FSCPublicMenu;
@class FSCClass;
@class FSCClassUser;
@class FSCTrgUser;
@class FSCTrgSession;


@interface LcUtils : NSObject

+ (FSCLinkman *)getFscLinkman:(NSNumber *)linkmanId;

+ (FSCPublicUser *)getFscPublicUser:(NSNumber *)userId;

+ (FSCPublicMenu *)getFscPublicMenu:(FSCPublicUser *)publicUser menuId:(NSNumber *)menuId;

+ (FSCClass *)getFscClass:(NSNumber *)classId;

+ (FSCClassUser *)getFscClassUser:(NSNumber *)userId fscClass:(FSCClass *)fscClass;

+ (FSCTrgUser *)getFscTrgUser:(NSNumber *)userId fscClass:(FSCTrgSession *)trgSession;
@end
