//
// Created by laborchu on 15/8/24.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscPublicUserListCmd.h"


@implementation LcFscPublicUserListCmd {

}
- (id)execute {
    NSFetchRequest *request = [super buildRequest:@"FSCPublicUser" parentPred:nil];
    return [super query:request];
}

@end
