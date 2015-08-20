//
// Created by laborchu on 15/8/9.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscLinkmanListCmd.h"
#import "FSCUser.h"


@implementation LcFscLinkmanListCmd {
}

- (id)execute {
    NSFetchRequest *request = [super buildRequest:@"FSCLinkman" parentPred:nil];
    return [super query:request];
}
@end
