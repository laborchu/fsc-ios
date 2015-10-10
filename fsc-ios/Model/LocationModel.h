//
// Created by laborchu on 15/10/8.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"


@interface LocationModel : JSONModel
@property (strong, nonatomic) NSString* locationAddress;
@property (assign, nonatomic) float longitude;
@property (assign, nonatomic) float latitude;
@end
