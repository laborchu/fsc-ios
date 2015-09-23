//
// Created by laborchu on 15/9/23.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ChatCell+Right.h"
#import "FscChatRecorder.h"
#import "FscChatRecorder.h"
#import "BbiUtils.h"
#import "IosUtils.h"
#import "FSCUser.h"


@implementation ChatCell (Right)

+(void) setRecorder:(FscChatRecorder *)recorder avatar:(UIImageView *)avatar{
    NSURL *avatarImgPath = [BbiUtils getResImgUrl:[IosUtils getFscUser].portrait];
    [avatar setImageWithURL:avatarImgPath placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
}

@end
