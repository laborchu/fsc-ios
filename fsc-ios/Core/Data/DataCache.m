//
// Created by laborchu on 15/8/9.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "DataCache.h"
#import "FSCLinkman.h"
#import "LcFscLinkmanListCmd.h"
#import "Scheduler.h"

static DataCache *dataCache;
@implementation DataCache

//初始化重写
- (id)init
{
    self = [super init];
    if (self) {
        _linkmanCache = [NSMutableDictionary dictionary];
    }
    return self;
}

+ (DataCache *)getDataCache {
    if(!dataCache){
        dataCache = [[DataCache alloc] init];
    }
    return dataCache;
}

+ (FSCLinkman *)getFSCLinkman:(NSNumber *)id {
    DataCache *dataCache = [DataCache getDataCache];
    FSCLinkman *fscLinkman = dataCache->_linkmanCache[id];
    if(fscLinkman == nil){
        ALcCmd *cmd = [[[LcFscLinkmanListCmd alloc] init]
                addPredicate:@"id==%lld" argumentArray:@[id]];
        NSArray *userList = [Scheduler exeLc:cmd];
        if(userList.count>0){
            fscLinkman = userList[0];
            dataCache->_linkmanCache[id] = fscLinkman;
        }
    }
    return fscLinkman;
}


@end
