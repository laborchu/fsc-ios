//
// Created by laborchu on 15/8/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscClassStudentListCmd.h"
#import "FSCClass.h"


@implementation LcFscClassStudentListCmd {
    FSCClass * _fscClass;
}

- (LcFscClassStudentListCmd *)initWithFscClass:(FSCClass *)fscClass{
    _fscClass = fscClass;
    return (LcFscClassStudentListCmd *) [super init];;
}

- (id)execute {
    NSPredicate *classPd = [NSPredicate predicateWithFormat:@"fscClass == %@ ", _fscClass];
    NSFetchRequest *request = [super buildRequest:@"FSCClassStudent" parentPred:classPd];
    return [super query:request];
}

@end
