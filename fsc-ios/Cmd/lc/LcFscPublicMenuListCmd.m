//
// Created by laborchu on 15/8/24.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscPublicMenuListCmd.h"
#import "FSCPublicUser.h"


@implementation LcFscPublicMenuListCmd {
    FSCPublicUser *_fscPublicUser;
}

- (LcFscPublicMenuListCmd *)initWithFscPublicUser:(FSCPublicUser *)fscPublicUser{
    _fscPublicUser = fscPublicUser;
    return (LcFscPublicMenuListCmd *) [super init];;
}

- (id)execute {
    NSPredicate *userPd = [NSPredicate predicateWithFormat:@"publicUser == %@ ", _fscPublicUser];
    NSFetchRequest *request = [super buildRequest:@"FSCPublicMenu" parentPred:userPd];
    return [super query:request];
}

@end
