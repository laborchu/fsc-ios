//
// Created by laborchu on 15/9/9.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarItem (CustomBadge)

-(void) setMyAppCustomBadgeValue: (NSString *) value;

-(void) setCustomBadgeValue: (NSString *) value withFont: (UIFont *) font andFontColor: (UIColor *) color andBackgroundColor: (UIColor *) backColor;

@end
