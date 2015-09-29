//
// Created by laborchu on 15/9/28.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "ChatCell+Left.h"
#import "FscChatRecorder.h"
#import "IosUtils.h"
#import "AChatHandler.h"
#import "ChatCell.h"
#import "BbiUtils.h"


@implementation ChatCell (Left)

//+(void) setRecorder:(FscChatRecorder *)recorder chatHandler:(AChatHandler *)chatHandler 
//             avatar:(UIImageView *)avatar{
//    NSString *avatarImgPath = [chatHandler getCreatedUser:recorder];
//    if([avatarImgPath rangeOfString:@"group"].length!=NSNotFound){
//        [avatar setImageWithURL:[BbiUtils getResImgUrl:avatarImgPath] placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
//    }else{
//        avatar.image = [UIImage imageNamed:avatarImgPath];
//    }
//}

@end
