//
// Created by laborchu on 15/7/25.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MBProgressHUD;


@interface TintUtils : NSObject

+(MBProgressHUD*)showUIBlockingIndicatorWithText:(NSString*)str;

+ (void)hideUIBlockingIndicator;

+ (void)hudShowWithString:(NSString *)msg;
@end
