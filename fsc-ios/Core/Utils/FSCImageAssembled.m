//
//  FSCImageAssembled.m
//  FriendSchoolContacts
//
//  Created by 陈无忌 on 6/15/15.
//  Copyright (c) 2015 whalefin.Giab. All rights reserved.
//

#import "FSCImageAssembled.h"
#import "FSCLinkman.h"
#import "FscConstants.h"

@implementation FSCImageAssembled

+ (UIImage *)assembledImage:(NSMutableArray *)imageArray
{
    NSMutableArray *images = [NSMutableArray array];
    for (FSCLinkman *linkMan in imageArray) {
        if (linkMan.portrait) {
            NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@%@", RES_SERVER,linkMan.portrait]]];
            UIImage *image = [UIImage imageWithData:imageData];
            if (!image) {
                image = [UIImage imageNamed:@"default_avatar"];
            }
            [images addObject:image];
        }else{
            UIImage *image = [UIImage imageNamed:@"default_avatar"];
            [images addObject:image];
        }
        
    }
    //承载的imageView
//    UIImageView *containerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
//    [containerImageView setImage:[UIImage imageNamed:@"groupAvatarBackGroup"]];
//
//    UIGraphicsBeginImageContext(containerImageView.image.size);
//    [containerImageView.image drawInRect:CGRectMake(0, 0, 50, 50)];

    CGSize size = CGSizeMake(50, 50);
    UIGraphicsBeginImageContext(size);
    
    if (images.count == 2) {
        CGFloat imageSideLength = (double)50/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            [image drawInRect:CGRectMake(imageSideLength * index, imageSideLength/(double)2, imageSideLength, imageSideLength)];
        }
    }else if (images.count == 3){
        CGFloat imageSideLength = (double)50/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            if (index == 0) {
                [image drawInRect:CGRectMake(imageSideLength/(double)2, 0, imageSideLength, imageSideLength)];
            }else{
                [image drawInRect:CGRectMake(imageSideLength * (index - 1), imageSideLength, imageSideLength, imageSideLength)];
            }
        }
    }else if (images.count == 4){
        CGFloat imageSideLength = (double)50/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            int x = index % 2;
            int y = (int)index / 2;
            [image drawInRect:CGRectMake(imageSideLength * x , imageSideLength * y, imageSideLength, imageSideLength)];
        }
    }else if (images.count == 5){
        CGFloat imageSideLength = (double)50/(double)3;
        CGFloat margin = (double)(50 - imageSideLength * 2)/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            if (index < 2) {
                [image drawInRect:CGRectMake(margin + index * imageSideLength, margin, imageSideLength, imageSideLength)];
            }else{
                [image drawInRect:CGRectMake((index - 2) * imageSideLength, imageSideLength + margin, imageSideLength, imageSideLength)];
            }
        }
    }else if (images.count == 6){
        CGFloat imageSideLength = (double)50/(double)3;
        CGFloat margin = (double)(50 - imageSideLength * 2)/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            int x = index % 3;
            int y = (int)index / 3;
            [image drawInRect:CGRectMake(x * imageSideLength, y * imageSideLength + margin, imageSideLength, imageSideLength)];
        }
    }else if (images.count == 7){
        CGFloat imageSideLength = (double)50/(double)3;
        CGFloat margin = (double)(50 - imageSideLength)/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            if (index < 6) {
                int x = index % 3;
                int y = (int)index / 3;
                [image drawInRect:CGRectMake(x * imageSideLength, y * imageSideLength, imageSideLength, imageSideLength)];
            }else{
                [image drawInRect:CGRectMake(margin, 2 * imageSideLength, imageSideLength, imageSideLength)];
            }
        }
    }else if (images.count == 8){
        CGFloat imageSideLength = (double)50/(double)3;
        CGFloat margin = (double)(50 - imageSideLength * 2)/(double)2;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            if (index < 6) {
                int x = index % 3;
                int y = (int)index / 3;
                [image drawInRect:CGRectMake(x * imageSideLength, y * imageSideLength, imageSideLength, imageSideLength)];
            }else{
                if (index == 6) {
                    [image drawInRect:CGRectMake(margin, 2 * imageSideLength, imageSideLength, imageSideLength)];
                }else{
                    [image drawInRect:CGRectMake(margin + imageSideLength, 2 * imageSideLength, imageSideLength, imageSideLength)];
                }
            }
        }
    }else{
        CGFloat imageSideLength = (double)50/(double)3;
        for (UIImage *image in images) {
            NSInteger index = [images indexOfObject:image];
            int x = index % 3;
            int y = (int)index / 3;
            [image drawInRect:CGRectMake(x * imageSideLength, y * imageSideLength, imageSideLength, imageSideLength)];
            if (index == 8) {
                break;
            }
        }
    }
    
    UIImage *resultImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
//    returnImage = containerImageView.image;
    return resultImg;
}


@end
