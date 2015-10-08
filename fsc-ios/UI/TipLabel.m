//
// Created by laborchu on 15/9/12.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "TipLabel.h"
#import "UIColor+Hex.h"


@implementation TipLabel {

}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        self.font = [UIFont systemFontOfSize:12];
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor colorWithHexString:@"#d4d4d4"];
        self.lineBreakMode = NSLineBreakByWordWrapping;
        self.clipsToBounds = YES;
        self.layer.cornerRadius = 2;
    }
    return self;
}

-(CGSize)intrinsicContentSize{
    CGSize contentSize = [super intrinsicContentSize];
    return CGSizeMake(contentSize.width + 10, contentSize.height+6);
}

- (void) drawTextInRect:(CGRect)rect
{
    UIEdgeInsets insets = {0,5,0,5};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
