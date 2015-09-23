//
// Created by laborchu on 15/7/14.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PhoneInfoPb;
@class FscAppDelegate;
@class FSCUser;

static PhoneInfoPb *deviceInfo  = nil;

@interface IosUtils : NSObject

+(PhoneInfoPb *) getDeviceInfo;

+ (FscAppDelegate *)getApp;

+ (FSCUser *)getFscUser;

+ (UITabBarController *)getMainTabCtrl;

+(UIView *)getRootView;

@end
