//
// Created by laborchu on 15/10/8.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"


@interface ChatFileModel : JSONModel
@property (strong, nonatomic) NSString* fileName;
@property (strong, nonatomic) NSNumber* fileId;
@property (strong, nonatomic) NSString* fileType;
@property (strong, nonatomic) NSString* filePath;
@property (assign, nonatomic) float fileSize;
@end
