//
// Created by laborchu on 15/8/4.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FSCUser;
@class NSEntityDescription;
@class NSFetchRequest;


@interface ALcCmd : NSObject{
    NSMutableArray *pdArray;
    NSMutableArray *sortDescs;
}

@property (nonatomic, assign) NSUInteger fetchLimit;

-(id) execute;

- (FSCUser *)getFscUser;

- (NSFetchRequest *)buildRequest:(NSString *)entityForName parentPred:(NSPredicate *)parentPred;

-(ALcCmd *)addPredicate:(NSString *)format argumentArray:(NSArray *)arguments;

- (ALcCmd *)addDescSortWithKey:(NSString *)key;

- (void)clearSort;

- (NSArray *)query:(NSFetchRequest *)request;

- (void)savaData;
@end
