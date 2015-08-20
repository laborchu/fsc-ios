//
// Created by laborchu on 15/8/9.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FSCLinkman;


@interface DataCache : NSObject{
    NSMutableDictionary *_linkmanCache;
}
+ (FSCLinkman *)getFSCLinkman:(NSNumber *)id1;
@end
