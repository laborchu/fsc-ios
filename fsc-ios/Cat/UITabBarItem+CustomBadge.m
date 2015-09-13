//
// Created by laborchu on 15/9/9.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "UITabBarItem+CustomBadge.h"
#import "UIColor+Hex.h"


#define CUSTOM_BADGE_TAG 99
#define OFFSET 0.6f

@implementation UITabBarItem (CustomBadge)


-(void) setMyAppCustomBadgeValue: (NSString *) value
{

    UIFont *myAppFont = [UIFont systemFontOfSize:13.0];
    UIColor *myAppFontColor = [UIColor whiteColor];
    UIColor *myAppBackColor = [UIColor colorWithHexString:@"#d3321b"];

    [self setCustomBadgeValue:value withFont:myAppFont andFontColor:myAppFontColor andBackgroundColor:myAppBackColor];
}



-(void) setCustomBadgeValue: (NSString *) value withFont: (UIFont *) font andFontColor: (UIColor *) color andBackgroundColor: (UIColor *) backColor
{
    UIView *v = [self valueForKey:@"view"];

    [self setBadgeValue:value];

    for(UIView *sv in v.subviews)
    {

        NSString *str = NSStringFromClass([sv class]);

        if([str isEqualToString:@"_UIBadgeView"])
        {
            for(UIView *ssv in sv.subviews)
            {
                // REMOVE PREVIOUS IF EXIST
                if(ssv.tag == CUSTOM_BADGE_TAG) { [ssv removeFromSuperview]; }
            }

            UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, sv.frame.size.width, sv.frame.size.height)];


            [l setFont:font];
            [l setText:value];
            [l setBackgroundColor:backColor];
            [l setTextColor:color];
            [l setTextAlignment:NSTextAlignmentCenter];

            l.layer.cornerRadius = l.frame.size.height/2;
            l.layer.masksToBounds = YES;

            // Fix for border
            sv.layer.borderWidth = 1;
            sv.layer.borderColor = [backColor CGColor];
            sv.layer.cornerRadius = sv.frame.size.height/2;
            sv.layer.masksToBounds = YES;


            [sv addSubview:l];

            l.tag = CUSTOM_BADGE_TAG;
        }
    }
}




@end
