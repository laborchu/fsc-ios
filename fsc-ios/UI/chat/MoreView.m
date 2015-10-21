//
// Created by laborchu on 15/10/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "MoreView.h"
#import "UIColor+Hex.h"
#import "UIButton+BackgroundColor.h"
#import "IosUtils.h"

@interface MoreView ()<UIImagePickerControllerDelegate>
@end
@implementation MoreView {

}
- (void)loadMoreView {
    int leftPadding = 10,btnSize=60,hGap=10;
    //发送图片
    UIButton *imgBtn = [[UIButton alloc] initWithFrame:CGRectMake(leftPadding, 10, btnSize, btnSize)];
    [self setBtn:imgBtn imgName:@"send_image"];
    [imgBtn addTarget:self action:@selector(openPicLibrary) forControlEvents:UIControlEventTouchUpInside];

    [self addSubview:imgBtn];

    //发送位置
    UIButton *positionBtn = [[UIButton alloc] initWithFrame:CGRectMake(leftPadding+btnSize+hGap, 10, btnSize, btnSize)];
    [self setBtn:positionBtn imgName:@"send_site"];
    [self addSubview:positionBtn];

    //发送文件
    UIButton *diskBtn = [[UIButton alloc] initWithFrame:CGRectMake(leftPadding+2*(btnSize+hGap), 10, btnSize, btnSize)];
    [self setBtn:diskBtn imgName:@"send_file"];
    [self addSubview:diskBtn];
}

-(void)setBtn:(UIButton *)btn imgName:(NSString *)imgName{
    btn.clipsToBounds = YES;
    [btn setImageEdgeInsets:UIEdgeInsetsMake(12,12, 12, 12)];
    [btn setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor colorWithHexString:@"#DCDCDE"] forState:UIControlStateHighlighted];
    [btn.layer setBorderColor:[[UIColor colorWithHexString:@"#B1B1B3"] CGColor]];
    [btn.layer setCornerRadius:8];
    [btn.layer setBorderWidth:1];
}

-(void)openPicLibrary{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = NO;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [[IosUtils getMainTabCtrl] presentViewController:picker animated:YES completion:nil];
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    [[IosUtils getMainTabCtrl] dismissViewControllerAnimated:YES completion:^{
        //用当前时间作为图片名
        NSString *imageName = [NSString stringWithFormat:@"/%lld.png",(SInt64)[NSDate date].timeIntervalSince1970];
        //图片转换
        NSData *data;
        if (UIImagePNGRepresentation(image)) {
            data = UIImageJPEGRepresentation(image, 0.5);
        }else{
            data = UIImagePNGRepresentation(image);
        }
        if (_delegate) {
            [_delegate sendImg:data];
        }

    }];
}

@end
