//
// Created by laborchu on 15/7/27.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARsCmd.h"

@class ALcCmd;

@interface Scheduler : NSObject

+(void) exeRs:(ARsCmd *)cmd;

+(id) exeLc:(ALcCmd *)cmd;

+ (void)doCmd;
@end
