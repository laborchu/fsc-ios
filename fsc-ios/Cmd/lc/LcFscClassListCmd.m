//
// Created by laborchu on 15/8/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscClassListCmd.h"


@implementation LcFscClassListCmd {

}

- (id)execute {
    NSFetchRequest *request = [super buildRequest:@"FSCClass" parentPred:nil];
    return [super query:request];
}
@end
