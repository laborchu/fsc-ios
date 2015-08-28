//
// Created by laborchu on 15/8/23.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcFscTeacherListCmd.h"


@implementation LcFscTeacherListCmd {

}
- (id)execute {
    NSFetchRequest *request = [super buildRequest:@"FSCTeacher" parentPred:nil];
    return [super query:request];
}

@end
