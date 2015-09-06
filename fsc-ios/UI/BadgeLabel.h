//
// Created by laborchu on 15/9/1.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum BadgeLabelStyle {
    BadgeLabelStyleAppIcon, // red background, white border, gloss and shadow
    BadgeLabelStyleMail ,    // gray background, minWidth
    BadgeLabelStyleUnread     // gray background, minWidth
} BadgeLabelStyle;

@interface BadgeLabel : UILabel

@property(nonatomic) BOOL hasBorder;
@property(nonatomic) BOOL hasShadow;
@property(nonatomic) BOOL hasGloss;
@property(nonatomic) CGFloat minWidth;

- (void)setStyle:(BadgeLabelStyle)style;

//- (void)setNumber:(NSNumber *)num;

@end
