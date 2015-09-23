//
// Created by laborchu on 15/9/23.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ChatCell+Img.h"


@implementation ChatCell (Img)

+(void) setImg:(NSURL *)imgUrl mask:(UIImage *)mask imgView:(UIImageView *)imgView {
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setImageWithURL:imgUrl placeholderImage:[UIImage imageNamed:@"chat_default_image"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType) {
        if (!error) {
            UIImage *img = [ChatCell dealWithImage:image];
            UIImage *resizeMask = [ChatCell scaleToSize:mask size:img.size];
            UIImage *maskedImage = [ChatCell maskImage:img withMask:resizeMask];
            [imgView setImage:maskedImage];
        }
    } usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
}

+ (UIImage*) maskImage:(UIImage *)image withMask:(UIImage *)maskImage {

    CGImageRef maskRef = maskImage.CGImage;

    CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
            CGImageGetHeight(maskRef),
            CGImageGetBitsPerComponent(maskRef),
            CGImageGetBitsPerPixel(maskRef),
            CGImageGetBytesPerRow(maskRef),
            CGImageGetDataProvider(maskRef), NULL, false);

    CGImageRef maskedImageRef = CGImageCreateWithMask([image CGImage], mask);
    UIImage *maskedImage = [UIImage imageWithCGImage:maskedImageRef];

    CGImageRelease(mask);
    CGImageRelease(maskedImageRef);

    // returns new image with mask applied
    return maskedImage;
}

//处理图片
+ (UIImage *)dealWithImage:(UIImage *)image
{
    return [self scaleToSize:image size:CGSizeMake(image.size.width * 100 / image.size.height,100 )];
}

//压缩图片
+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    // 设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}

@end
