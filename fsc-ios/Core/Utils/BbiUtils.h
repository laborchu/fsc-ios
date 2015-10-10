//
// Created by laborchu on 15/9/1.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FscConstants.h"


@interface BbiUtils : NSObject

+ (NSString *)getPublicIcon:(NSString *)code;

+ (NSString *)getFileIcon:(NSString *)fileType;

+ (NSURL *)getResImgUrl:(NSString *)imgPath;
@end
