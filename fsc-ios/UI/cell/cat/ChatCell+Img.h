//
// Created by laborchu on 15/9/23.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChatCell.h"

@interface ChatCell (Img)
+ (void)setImg:(NSURL *)imgUrl mask:(UIImage *)mask imgView:(UIImageView *)imgView;

+ (UIImage *)maskImage:(UIImage *)image withMask:(UIImage *)maskImage;

+ (UIImage *)dealWithImage:(UIImage *)image;

+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;
@end
