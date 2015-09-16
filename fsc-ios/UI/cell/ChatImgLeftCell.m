//
//  ChatImgLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/15.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatImgLeftCell.h"


@interface ChatImgLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet UIImageView *msgImg;
@end

@implementation ChatImgLeftCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state chat_left_bubble
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.avatarImg setImage:[UIImage imageNamed:@"default_avatar"]];
    self.nameLabel.text = @"李四";

    UIImage *image = [self dealWithImage:[UIImage imageNamed:@"msg_tmp@2x.jpg"]];
    UIImage *mask = [ [UIImage imageNamed:@"chat_left_mask"] resizableImageWithCapInsets:UIEdgeInsetsMake(30, 10, 10, 10)];
    mask = [self dealWithImage:mask];
    UIImage *maskedImage = [self maskImage:image withMask:mask];
    [self.msgImg setImage:maskedImage];
}

- (UIImage*) maskImage:(UIImage *)image withMask:(UIImage *)maskImage {

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
- (UIImage *)dealWithImage:(UIImage *)image
{
    return [self scaleToSize:image size:CGSizeMake(image.size.width * 250 / image.size.height,250 )];
}

//压缩图片
- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
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
