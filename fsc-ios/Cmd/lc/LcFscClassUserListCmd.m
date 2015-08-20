//
// Created by laborchu on 15/8/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "LcFscClassUserListCmd.h"
#import "FSCClass.h"


@implementation LcFscClassUserListCmd {
    FSCClass * _fscClass;
}

- (LcFscClassUserListCmd *)initWithFscClass:(FSCClass *)fscClass{
    _fscClass = fscClass;
    return (LcFscClassUserListCmd *) [super init];;
}

- (id)execute {
    NSPredicate *classPd = [NSPredicate predicateWithFormat:@"fscClass == %@ ", _fscClass];
    NSFetchRequest *request = [super buildRequest:@"FSCClassUser" parentPred:classPd];
    return [super query:request];
}

@end
