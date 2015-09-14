//
//  FSCChatLabel.m
//  FriendSchoolContacts
//
//  Created by 陈无忌 on 4/15/15.
//  Copyright (c) 2015 whalefin.Giab. All rights reserved.
//

#import "FSCChatLabel.h"

#define kTrailing 80
#define kLeading 67

@implementation FSCChatLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    CGFloat labelMaxWidth = frame.size.width - kTrailing - kLeading;
    //设置自动换行
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.numberOfLines = 0;
    self.preferredMaxLayoutWidth = labelMaxWidth;
    self.backgroundColor = [UIColor clearColor];
}

@end
