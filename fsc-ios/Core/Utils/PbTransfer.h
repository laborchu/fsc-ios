//
// Created by laborchu on 15/7/30.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PBGeneratedMessage;



@interface PbTransfer : NSObject

+(id)pb:(PBGeneratedMessage *)pb entityName:(NSString *)entityName fields:(NSArray *)fields;

+(id)pb:(PBGeneratedMessage *)pb vo:(id)vo fields:(NSArray *)fields;

@end
