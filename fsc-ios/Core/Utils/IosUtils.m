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
        PhoneInfoPbBuilder *phoneBuilder = [PhoneInfoPb builder];
        deviceInfo = [[[[[[[phoneBuilder setDeviceId:deviceId] setSubscriberId:subscruberId] setModel:model]setAppVersion:appVersion]setOsVersion:osVersion] setBrand:@"iPhone"] build];
    }
    return deviceInfo;
}

+(FscAppDelegate *)getApp{
    FscAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    return delegate;
}

+(UITabBarController *)getMainTabCtrl{
    FscAppDelegate *delegate = [IosUtils getApp];
    return (UITabBarController *) delegate.window.rootViewController;
}

+ (UIView *)getRootView {
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (topController.presentedViewController){
        topController = topController.presentedViewController;
    }
    return topController.view;
}


@end
