//
// Created by laborchu on 15/7/27.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARsCmd.h"


@interface RsSessionPostCmd : ARsCmd

@property NSString *username;
@property NSString *password;


-(RsSessionPostCmd *)initUsername:(NSString *)username pwd:(NSString *)pwd;

@end
