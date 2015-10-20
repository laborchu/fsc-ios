/************************************************************
  *  * EaseMob CONFIDENTIAL 
  * __________________ 
  * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved. 
  *  
  * NOTICE: All information contained herein is, and remains 
  * the property of EaseMob Technologies.
  * Dissemination of this information or reproduction of this material 
  * is strictly forbidden unless prior written permission is obtained
  * from EaseMob Technologies.
  */

#import "FacialView.h"
#import "BbiUtils.h"
#import "UIColor+Hex.h"
#import "EmojiBtn.h"

@interface FacialView ()<UIScrollViewDelegate>
@end

@implementation FacialView {
    UIScrollView *_faceScrollView;
    NSMutableArray *_circleArray;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


//给faces设置位置
- (void)loadFacialView:(int)page size:(CGSize)size {

    NSMutableArray *emojiArray = [BbiUtils getEmojiArray];
    int row = 3;
    int col = 7;
    int pageSize = emojiArray.count / (3 * 7);
    int faceSize = 30;
    int hRap = 0, vRap = 10, leftPadding = 0, topPadding = 10,circleLeftPadding;
    if (SCREEN_320_WIDTH == SCREEN_WIDTH) {
        leftPadding = 16;
        hRap = 13;
    } else if (SCREEN_375_WIDTH == SCREEN_WIDTH) {
        leftPadding = 20;
        hRap = 21;
    } else if (SCREEN_414_WIDTH == SCREEN_WIDTH) {
        leftPadding = 25;
        hRap = 25;
    }
    circleLeftPadding = (int) ((SCREEN_WIDTH-46)/2);

    for (int l = 0; l < 5; ++l) {
        UIView *circleView = [[UIView alloc] initWithFrame:CGRectMake(circleLeftPadding+l*10,140,6,6)];
        circleView.layer.cornerRadius = 3;
        if(l==0){
            circleView.backgroundColor = [UIColor colorWithHexString:@"#9A9A9A"];
        }else{
            circleView.backgroundColor = [UIColor colorWithHexString:@"#EBEBEB"];
        }
        [_circleArray addObject:circleView];
        [self addSubview:circleView];
    }


    _faceScrollView = [[UIScrollView alloc] initWithFrame:self.frame];
    _faceScrollView.contentSize = CGSizeMake(self.frame.size.width * pageSize, self.frame.size.height);
    // 是否分页
    _faceScrollView.pagingEnabled = YES;
    _faceScrollView.delegate = self;
    [_faceScrollView setShowsHorizontalScrollIndicator:NO];
    [_faceScrollView setShowsVerticalScrollIndicator:NO];
    [self addSubview:_faceScrollView];

    NSUInteger faceIndex = 0;
    int backX = 0;
    for (int k = 0; k < pageSize; ++k) {
        for (int i = 0; i < row; ++i) {
            for (int j = 0; j < col; ++j) {
                if (faceIndex == emojiArray.count) {
                    break;
                }
                NSArray *emojiNameLabelArray = [emojiArray[faceIndex] componentsSeparatedByString:@","];
                NSString *emojiName = emojiNameLabelArray[0];
                int x = (int) (leftPadding + (hRap + faceSize) * j + k * SCREEN_WIDTH);
                int y = (vRap + faceSize) * i + topPadding;
                EmojiBtn *faceBtn = [[EmojiBtn alloc] initWithFrame:CGRectMake(x, y, faceSize, faceSize)];
                [faceBtn setEmojiLabel:emojiNameLabelArray[1]];
                NSString *imagePath = [[NSBundle mainBundle] pathForResource:emojiName ofType:nil];
                [faceBtn setBackgroundImage:[UIImage imageWithContentsOfFile:imagePath] forState:UIControlStateNormal];
                [faceBtn addTarget:self action:@selector(faceClick:) forControlEvents:UIControlEventTouchUpInside];
                [_faceScrollView addSubview:faceBtn];
                faceIndex++;
                if(i==(row-1)&&j==(col-1)){
                    backX = x;
                }
            }
        }
        UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(backX-3, 132, 30, 25)];
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"face_del_ico_dafeult.png" ofType:nil];
        [backBtn setBackgroundImage:[UIImage imageWithContentsOfFile:imagePath] forState:UIControlStateNormal];
        [backBtn addTarget:self action:@selector(backClick:) forControlEvents:UIControlEventTouchUpInside];

        [_faceScrollView addSubview:backBtn];
    }

}

- (IBAction)faceClick:(EmojiBtn *)button
{
    if (_delegate) {
        [_delegate appendMsg:[button emojiLabel]];
    }
}

- (void)backClick:(UIButton *)button
{
    if (_delegate) {
        [_delegate deleteMsg];
    }
}

@end
