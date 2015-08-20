//
// Created by laborchu on 15/7/14.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "IosUtils.h"
#import "PhoneInfo.pb.h"
#import "FscAppDelegate.h"

@implementation IosUtils {

}

+ (PhoneInfoPb *)getDeviceInfo {
    if(!deviceInfo){
        NSDictionary *dicInfo = [[NSBundle mainBundle] infoDictionary];
        NSString *deviceId = [[UIDevice currentDevice].identifierForVendor UUIDString];
        NSString *subscruberId = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        NSString *model = [[UIDevice currentDevice] model];
        NSString *appVersion = [dicInfo objectForKey:@"CFBundleShortVersionString"];
        SInt32 osVersion = [[[UIDevice currentDevice] systemVersion] intValue];
        PhoneInfoPb_Builder *phoneBuilder = [PhoneInfoPb builder];
        deviceInfo = [[[[[[[phoneBuilder setDeviceId:deviceId] setSubscriberId:subscruberId] setModel:model]setAppVersion:appVersion]setOsVersion:osVersion] setBrand:@"iPhone"] build];
    }
    return deviceInfo;
}

+(FscAppDelegate *)getApp{
    FscAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    return delegate;
}

+ (UIView *)getRootView {
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (topController.presentedViewController){
        topController = topController.presentedViewController;
    }
    return topController.view;
}


@end
