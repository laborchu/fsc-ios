//
// Created by laborchu on 15/8/9.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscLinkmanListCmd.h"
#import "FSCUser.h"


@implementation LcFscLinkmanListCmd {
}

- (LcFscLinkmanListCmd *)initDefault{
    LcFscLinkmanListCmd *cmd = (LcFscLinkmanListCmd *) [super init];
    [super addPredicate:@"status == %d " argumentArray:@[@(1)]];
    return cmd;
}

- (id)execute {
    NSFetchRequest *request = [super buildRequest:@"FSCLinkman" parentPred:nil];
    return [super query:request];
}
@end
