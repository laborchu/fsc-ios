//
// Created by laborchu on 15/9/17.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatCell.h"


@interface ChatImgCell : ChatCell
- (UIImage *)maskImage:(UIImage *)image withMask:(UIImage *)maskImage;

- (UIImage *)dealWithImage:(UIImage *)image;

- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;
@end
