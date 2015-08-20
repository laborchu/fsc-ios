//
// Created by laborchu on 15/8/4.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "ALcCmd.h"
#import "FSCUser.h"
#import "FscAppDelegate.h"
#import "IosUtils.h"
#import "FscDataManager.h"


@implementation ALcCmd {

}

//初始化重写
- (id)init {
    self = [super init];
    sortDescs = [[NSMutableArray alloc] initWithCapacity:5];
    pdArray = [[NSMutableArray alloc] initWithCapacity:5];
    return self;
}

- (id)execute {
    return nil;
}

- (FSCUser *)getFscUser {
    FscAppDelegate *fscAppDelegate = [IosUtils getApp];
    return fscAppDelegate.fscUser;
}

- (NSFetchRequest *)buildRequest:(NSString *)entityForName parentPred:(NSPredicate *)parentPred {
    FscDataManager *manager = [FscDataManager getManager];
    NSManagedObjectContext *context = manager.managedObjectContext;
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityForName inManagedObjectContext:context];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entity];
    if(parentPred==nil){
        NSPredicate *userPd = [NSPredicate predicateWithFormat:@"fscUser == %@ ", [self getFscUser]];
        [pdArray addObject:userPd];
    }else{
        [pdArray addObject:parentPred];
    }
    NSPredicate *pd = [NSCompoundPredicate andPredicateWithSubpredicates:pdArray];
    [request setPredicate:pd];
    [request setSortDescriptors:sortDescs];
    if ([self fetchLimit]) {
        [request setFetchLimit:[self fetchLimit]];
    }
    return request;
}

- (ALcCmd *)addPredicate:(NSString *)format argumentArray:(NSArray *)arguments {
    NSPredicate *pd = [NSPredicate predicateWithFormat:format argumentArray:arguments];
    [pdArray addObject:pd];
    return self;
}

- (ALcCmd *)addDescSortWithKey:(NSString *)key {
    NSSortDescriptor *sortDesc = [[NSSortDescriptor alloc] initWithKey:key
                                                             ascending:NO];
    [sortDescs addObject:sortDesc];
    return self;
}

- (void)clearSort {
    [sortDescs removeAllObjects];
}

- (NSArray *)query:(NSFetchRequest *)request {
    FscDataManager *manager = [FscDataManager getManager];
    NSManagedObjectContext *context = manager.managedObjectContext;
    NSError *error = nil;
    //指定对结果的排序方式
    //执行获取数据请求，返回数组
    return [context executeFetchRequest:request error:&error];
}

@end
