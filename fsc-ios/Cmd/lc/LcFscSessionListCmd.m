//
// Created by laborchu on 15/8/24.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscSessionListCmd.h"


@implementation LcFscSessionListCmd {

}
- (id)execute {
    NSFetchRequest *request = [super buildRequest:@"FSCSession" parentPred:nil];
    return [super query:request];
}

@end
