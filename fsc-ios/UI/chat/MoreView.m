//
// Created by laborchu on 15/10/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "MoreView.h"
#import "UIColor+Hex.h"
#import "UIButton+BackgroundColor.h"


@implementation MoreView {

}
- (void)loadMoreView {
    int leftPadding = 10,btnSize=60,hGap=10;
    //发送图片
    UIButton *imgBtn = [[UIButton alloc] initWithFrame:CGRectMake(leftPadding, 10, btnSize, btnSize)];
    [self setBtn:imgBtn imgName:@"send_image"];
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

@end
