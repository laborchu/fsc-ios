//
//  FscAppDelegate.m
//  fsc-ios
//
//  Created by laborchu on 15/7/14.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "FscAppDelegate.h"
#import "FscSocketClient.h"
#import "FscDeviceVersion.h"
#import "FscColorDefine.h"
#import "MsgCode.h"
#import "FSCUser.h"
#import "Scheduler.h"
#import "RsFscLinkmanListCmd.h"
#import "RsFscClassUserListCmd.h"
#import "RsFscTeacherListCmd.h"
#import "RsFscPublicUserListCmd.h"
#import "RsFscSessionListCmd.h"
#import "BbiUtils.h"

@interface FscAppDelegate()

@end

@implementation FscAppDelegate

-(void)navigationBarLoad{
    if (IS_OS_7_OR_LATER ) {
        [[UINavigationBar appearance] setBarTintColor:COLOR_NAVBARTINT];
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
        [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    }else{
        [[UINavigationBar appearance] setTintColor:COLOR_NAVBARTINT];
    }

    UITabBarController *tabBarController = (UITabBarController *) self.window.rootViewController;
    ((UITabBarItem *)tabBarController.tabBar.items[0]).selectedImage = [UIImage imageNamed:@"tabbar_chat_select"];
    ((UITabBarItem *)tabBarController.tabBar.items[1]).selectedImage = [UIImage imageNamed:@"tabbar_discover_select"];
    ((UITabBarItem *)tabBarController.tabBar.items[2]).selectedImage = [UIImage imageNamed:@"tabbar_contacts_select"];
    ((UITabBarItem *)tabBarController.tabBar.items[3]).selectedImage = [UIImage imageNamed:@"tabbar_more_select"];
    [[UITabBar appearance] setTintColor:UIColorFromRGB(0x06bb04)];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [self navigationBarLoad];
//    AVAudioSession *session = [AVAudioSession sharedInstance];
//    NSError *sessionError;
//    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:&sessionError];
//    if (sessionError == nil)
//        NSLog(@"Error creating session: %@", [sessionError description]);
//    else
//        [session setActive:YES error:nil];
//
//    [[UIApplication sharedApplication] setStatusBarHidden:UIStatusBarStyleLightContent];

    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *loginNav = [storyboard instantiateViewControllerWithIdentifier:@"loginNav"];
    self.window.rootViewController = loginNav;

    [[UINavigationBar appearance] setBarTintColor:COLOR_NAVBARTINT];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];

    [self.window makeKeyAndVisible];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginHandler:) name:LOGIN_CODE object:nil];


    FscSocketClient *client = [FscSocketClient getClient];

    return YES;
}

- (void)loginHandler:(NSNotification *)notify {
    NSDictionary *userInfo = [notify userInfo];
    if (userInfo == nil) {
        [Scheduler exeRs:[RsFscLinkmanListCmd alloc]];
        [Scheduler exeRs:[RsFscClassUserListCmd alloc]];
        [Scheduler exeRs:[RsFscTeacherListCmd alloc]];
        [Scheduler exeRs:[RsFscPublicUserListCmd alloc]];
        [Scheduler exeRs:[RsFscSessionListCmd alloc]];
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
//    [self saveContext];
}
@end
