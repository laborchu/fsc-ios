//
// Created by laborchu on 15/8/26.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "LcUtils.h"
#import "FSCLinkman.h"
#import "ALcCmd.h"
#import "LcFscLinkmanListCmd.h"
#import "Scheduler.h"
#import "FSCPublicSession.h"
#import "FSCPublicUser.h"
#import "LcFscSessionListCmd.h"
#import "FSCPublicUser.h"
#import "FSCPublicMenu.h"
#import "LcFscPublicUserListCmd.h"
#import "FSCPublicMenu.h"
#import "LcFscPublicMenuListCmd.h"

static NSMutableDictionary *_linkmanDic;
static NSMutableDictionary *_publicUserDic;
static NSMutableDictionary *_publicMenuDic;

@implementation LcUtils {

}

/**
* 获取联系人
*/
+ (FSCLinkman *)getFscLinkman:(NSNumber *)linkmanId {
    if (!_linkmanDic) {
        _linkmanDic = [NSMutableDictionary dictionary];
    }
    FSCLinkman *fscLinkman;
    if (_linkmanDic[linkmanId]) {
        fscLinkman = _linkmanDic[linkmanId];
    } else {
        ALcCmd *linkmanCmd = [[[LcFscLinkmanListCmd alloc] init]
                addPredicate:@"id==%lld" argumentArray:@[linkmanId]];
        NSArray *linkmanArray = [Scheduler exeLc:linkmanCmd];
        if (linkmanArray.count > 0) {
            fscLinkman = linkmanArray[0];
            _linkmanDic[linkmanId] = fscLinkman;
        }
    }
    return fscLinkman;
}

/**
* 获取公众账号用户
*/
+ (FSCPublicUser *)getFscPublicUser:(NSNumber *)userId {
    if (!_publicUserDic) {
        _publicUserDic = [NSMutableDictionary dictionary];
    }
    FSCPublicUser *publicUser;
    if (_publicUserDic[userId]) {
        publicUser = _publicUserDic[userId];
    } else {
        ALcCmd *cmd = [[[LcFscPublicUserListCmd alloc] init]
                addPredicate:@"id==%lld" argumentArray:@[userId]];
        [cmd setFetchLimit:1];
        NSArray *publicUserArray = [Scheduler exeLc:cmd];
        if (publicUserArray.count > 0) {
            publicUser = publicUserArray[0];
            _publicUserDic[userId] = publicUser;
        }
    }
    return publicUser;
}


/**
* 获取公众账号菜单
*/
+ (FSCPublicMenu *)getFscPublicMenu:(FSCPublicUser *)publicUser menuId:(NSNumber *)menuId {
    if (!_publicMenuDic) {
        _publicMenuDic = [NSMutableDictionary dictionary];
    }
    FSCPublicMenu *publicMenu;
    if (_publicMenuDic[menuId]) {
        publicMenu = _publicMenuDic[menuId];
    } else {
        ALcCmd *cmd = [[[LcFscPublicMenuListCmd alloc] initWithFscPublicUser:publicUser]
                addPredicate:@"id==%lld" argumentArray:@[menuId]];
        [cmd setFetchLimit:1];
        NSArray *publicMenuArray = [Scheduler exeLc:cmd];
        if (publicMenuArray.count > 0) {
            publicMenu = publicMenuArray[0];
            _publicMenuDic[menuId] = publicMenu;
        }
    }
    return publicMenu;
}


@end
