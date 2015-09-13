//
//  FscMainCtrl.m
//  fsc-ios
//
//  Created by laborchu on 15/8/6.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscMainCtrl.h"
#import "MsgCode.h"
#import "IosUtils.h"
#import "FscAppDelegate.h"
#import "UITabBarItem+CustomBadge.h"
#import "UIColor+Hex.h"


@implementation FscMainCtrl

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sessionUnreadHandler:) name:FSC_SESSION_UNREAD_PATCH object:nil];
}


- (void)sessionUnreadHandler:(NSNotification *)notify {
    NSDictionary *userInfo = [notify userInfo];
    if (userInfo) {
        NSString *op = userInfo[@"op"];
        NSNumber *count = userInfo[@"count"];
        if([op isEqualToString:@"plus"]){
            UITabBarController *tabBarController = [IosUtils getMainTabCtrl];
            UITabBarItem *barItem = ((UITabBarItem *)tabBarController.tabBar.items[0]);
            [barItem setMyAppCustomBadgeValue:[count stringValue]];
//            [barItem setCustomBadgeValue:[count stringValue]
//                                withFont:nil
//                            andFontColor:[UIColor colorWithHexString:@"#d3321b"]
//                      andBackgroundColor:nil];
        }
    }
}


@end
