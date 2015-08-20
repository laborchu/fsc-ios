//
//  ViewController.m
//  FriendSchoolContacts
//
//  Created by 陈无忌 on 4/2/15.
//  Copyright (c) 2015 whalefin.Giab. All rights reserved.
//

#import "FSCLoginViewCtrl.h"
#import "UIColor+Hex.h"
#import "TintUtils.h"
#import "RsSessionPostCmd.h"
#import "Scheduler.h"
#import "MsgCode.h"
#import "IosUtils.h"
#import "FscAppDelegate.h"

@interface FSCLoginViewCtrl ()

@property(weak, nonatomic) IBOutlet UITextField *usernameInput;
@property(weak, nonatomic) IBOutlet UITextField *pwdInput;
@property(weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation FSCLoginViewCtrl

/**
* 监听输入改版
*/
- (IBAction)inputChange:(id)sender {
    if (_usernameInput.text.length && _pwdInput.text.length && !_loginBtn.enabled) {
        _loginBtn.alpha = 1;
        _loginBtn.enabled = YES;
    } else if ((!_usernameInput.text.length || !_pwdInput.text.length) && _loginBtn.enabled) {
        _loginBtn.alpha = 0.5;
        _loginBtn.enabled = NO;
    }
}

/**
* 登陆操作
*/
- (IBAction)doLogin:(id)sender {
    ARsCmd *cmd = [[RsSessionPostCmd alloc] initUsername:_usernameInput.text pwd:_pwdInput.text];
    [Scheduler exeRs:cmd];
    [TintUtils showUIBlockingIndicatorWithText:@"正在登陆"];
}

- (void)loginHandler:(NSNotification *)notify {
    [TintUtils hideUIBlockingIndicator];
    NSDictionary *userInfo = [notify userInfo];
    if (userInfo == nil) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UITabBarController *mainCtrl = [storyboard instantiateViewControllerWithIdentifier:@"mainCtrl"];
        FscAppDelegate *delegate = [IosUtils getApp];
        delegate.window.rootViewController = mainCtrl;
    } else {
        NSString *msg = userInfo[@"msg"];
        [TintUtils hudShowWithString:msg];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginHandler:) name:LOGIN_CODE object:nil];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *unLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 45, 37)];
    unLabel.text = @"   账号";
    unLabel.font = [unLabel.font fontWithSize:13];
    _usernameInput.leftView = unLabel;
    _usernameInput.leftViewMode = UITextFieldViewModeAlways;

    UILabel *pwdLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 45, 37)];
    pwdLabel.text = @"   密码";
    pwdLabel.font = [unLabel.font fontWithSize:13];
    _pwdInput.leftView = pwdLabel;
    _pwdInput.leftViewMode = UITextFieldViewModeAlways;

    _loginBtn.alpha = 0.5;
    _loginBtn.enabled = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews]; //if you want superclass's behaviour...
    // resize your layers based on the view's new frame
    CGColorRef borderColor = [[UIColor colorWithHexString:@"#e5e5e5"] CGColor];
    UIBezierPath *unMaskPath = [UIBezierPath bezierPathWithRoundedRect:_usernameInput.bounds
                                                     byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight
                                                           cornerRadii:CGSizeMake(7, 7)];
    CAShapeLayer *unMaskLayer = [CAShapeLayer layer];
    unMaskLayer.frame = _usernameInput.bounds;
    unMaskLayer.path = unMaskPath.CGPath;
    unMaskLayer.strokeColor = borderColor;
    unMaskLayer.fillColor = nil;
    unMaskLayer.lineWidth = 2;
    [_usernameInput.layer addSublayer:unMaskLayer];

    UIBezierPath *pwdMaskPath = [UIBezierPath bezierPathWithRoundedRect:_pwdInput.bounds
                                                      byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight
                                                            cornerRadii:CGSizeMake(5, 5)];
    CAShapeLayer *pwdMaskLayer = [CAShapeLayer layer];
    pwdMaskLayer.frame = _pwdInput.bounds;
    pwdMaskLayer.path = pwdMaskPath.CGPath;
    pwdMaskLayer.strokeColor = borderColor;
    pwdMaskLayer.fillColor = nil;
    pwdMaskLayer.lineWidth = 2;
    [_pwdInput.layer addSublayer:pwdMaskLayer];

}

@end
