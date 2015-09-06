//
// Created by laborchu on 15/9/1.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "BbiUtils.h"


@implementation BbiUtils {

}

+ (NSString *)getPublicIcon:(NSString *)code {
    if ([code isEqualToString:PUBLIC_SYS_FSC]) {
        return @"we";
    }else if ([code isEqualToString:PUBLIC_SYS_NOTICE]){
        return @"public_portrait_notice";
    }else if ([code isEqualToString:PUBLIC_SYS_ACT_VOTE]){
        return @"public_portrait_act_vote";
    }else if ([code isEqualToString:PUBLIC_SYS_TEACH]){
        return @"public_portrait_teach";
    }else if ([code isEqualToString:PUBLIC_SYS_RRT_HELPER]){
        return @"public_icon";
    }
    return @"";
}

@end
