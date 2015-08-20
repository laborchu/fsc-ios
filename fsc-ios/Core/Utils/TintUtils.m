//
// Created by laborchu on 15/7/25.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "TintUtils.h"
#import "MBProgressHUD.h"
#import "IosUtils.h"

static UIView *lastViewWithHub = nil;

@implementation TintUtils {

}

+ (MBProgressHUD *)showUIBlockingIndicatorWithText:(NSString *)str {
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    UIView *targetView = [IosUtils getRootView];
    if (targetView == nil) return nil;
    lastViewWithHub = targetView;
    [MBProgressHUD hideHUDForView:targetView animated:YES];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:targetView animated:YES];
    if (str != nil){
        hud.labelText = str;
    }else{
        hud.labelText = @"加載中...";
    }
    return hud;
}

+ (void)hideUIBlockingIndicator {
    [MBProgressHUD hideHUDForView:lastViewWithHub animated:YES];
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

+ (void)hudShowWithString:(NSString *)msg {
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:[IosUtils getRootView]];
    [[IosUtils getRootView] addSubview:hud];
    hud.labelText = msg;
    hud.mode = MBProgressHUDModeText;
    [hud showAnimated:YES whileExecutingBlock:^{
        sleep(2);
    } completionBlock:^{
        [hud removeFromSuperview];
    }];
}

@end
