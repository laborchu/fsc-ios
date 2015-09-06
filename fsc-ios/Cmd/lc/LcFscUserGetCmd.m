//
// Created by laborchu on 15/8/4.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "LcFscUserGetCmd.h"
#import "FscDataManager.h"


@implementation LcFscUserGetCmd {
    SInt64 _userId;
}
- (LcFscUserGetCmd *)initUserId:(SInt64 *)userId {
    _userId = (SInt64) userId;
    return self;
}

- (id)execute {
    FscDataManager *manager = [FscDataManager getManager];
    NSManagedObjectContext *context =  manager.managedObjectContext;
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"FSCUser" inManagedObjectContext:context];
    //设置请求实体
    [request setEntity:entity];
    NSString *fetchString = [NSString stringWithFormat:@"id == %lld",_userId];
    NSPredicate *pd = [NSPredicate predicateWithFormat:fetchString];
    request.predicate = pd;//谓词的内容
    //将经过谓词查询的数据存储进一个数组。
    NSError *error = nil;
    //指定对结果的排序方式
    //执行获取数据请求，返回数组
    NSArray *userList = [context executeFetchRequest:request error:&error];
//    if(userList.count>0){
//        [context deleteObject:userList[0]];
//        [super savaData];
//        userList = @[];
//    }
    return userList;
}

@end
