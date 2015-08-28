//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcUtils.h"
#import "FSCLinkman.h"
#import "ALcCmd.h"
#import "LcFscLinkmanListCmd.h"
#import "Scheduler.h"

static NSMutableDictionary *_linkmanDic;
@implementation LcUtils {

}

+(FSCLinkman *) getFscLinkman:(NSNumber *) linkmanId{
    if(!_linkmanDic){
        _linkmanDic = [NSMutableDictionary dictionary];
    }
    FSCLinkman *fscLinkman;
    if(_linkmanDic[linkmanId]){
        fscLinkman = _linkmanDic[linkmanId];
    }else{
        ALcCmd *linkmanCmd = [[[LcFscLinkmanListCmd alloc] init]
                addPredicate:@"id==%lld" argumentArray:@[linkmanId]];
        NSArray *linkmanArray = [Scheduler exeLc:linkmanCmd];
        if(linkmanArray.count>0){
            fscLinkman =  linkmanArray[0];
            _linkmanDic[linkmanId] = fscLinkman;
        }
    }
    return fscLinkman;
}

@end
