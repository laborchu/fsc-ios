//
//  FscAppDelegate.h
//  fsc-ios
//
//  Created by laborchu on 15/7/14.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FSCUser;

@interface FscAppDelegate : UIResponder<UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FSCUser *fscUser;

@end
