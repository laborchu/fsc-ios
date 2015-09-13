//
// Created by laborchu on 15/8/19.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscSessionCtrl.h"
#import "LcFscSessionListCmd.h"
#import "Scheduler.h"
#import "FscSessionCell.h"
#import "FSCSession.h"
#import "MsgCode.h"
#import "FscConstants.h"
#import "LcUtils.h"
#import "FSCPublicUser.h"
#import "FscChatCtrl.h"

@interface FscSessionCtrl () <UITableViewDataSource, UITableViewDelegate>
@property(weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) NSMutableArray *sessionSource;
@property(strong, nonatomic) NSMutableDictionary *sessionDicCache;
@end

@implementation FscSessionCtrl {

}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        _sessionSource = [[NSMutableArray alloc] initWithCapacity:3];
        _sessionDicCache = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadLinkman];
}

- (void)reloadLinkman {
    ALcCmd *cmd = [[LcFscSessionListCmd alloc] initDefault];
    NSArray *array = [Scheduler exeLc:cmd];
    int unreadCount = 0;
    for (FSCSession *fscSession in array) {
        if ([fscSession.type isEqualToNumber:@(SESSION_TYPE_PUBLIC_CHAT)]) {
            FSCPublicUser *publicUser = [LcUtils getFscPublicUser:fscSession.msId];
            if (publicUser.groupCode.length) {
                continue;
            }else{
                if(!publicUser.isGroup){
                    unreadCount += [fscSession.unreadCount intValue];
                }
            }
        }else{
            unreadCount += [fscSession.unreadCount intValue];
        }
        [self addFscSession:fscSession atIndex:(NSUInteger) -1];
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:FSC_SESSION_UNREAD_PATCH object:nil userInfo:@{@"op":@"plus",@"count":@(unreadCount)}];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sessionListHandler:) name:MSG_FSC_SESSION_UPDATE object:nil];
}


- (void)sessionListHandler:(NSNotification *)notify {
    NSMutableArray *sessionArray = notify.object;
    for (FSCSession *fscSession in sessionArray) {
        if ([fscSession.dataStatus intValue] == 0) {
            if (_sessionDicCache[fscSession.id]) {
                [_sessionSource removeObject:_sessionDicCache[fscSession.id]];
                [_sessionDicCache removeObjectForKey:fscSession.id];
            }
            continue;
        }

        if (_sessionDicCache[fscSession.id]) {
            continue;
        }
        [self addFscSession:fscSession atIndex:0];
    }
    [[self tableView] reloadData];
}

- (void)addFscSession:(FSCSession *)session atIndex:(NSUInteger)index {
    if (index == -1) {
        [_sessionSource addObject:session];
    } else {
        [_sessionSource insertObject:session atIndex:index];
    }
    _sessionDicCache[session.id] = session;
}


- (void)viewDidLayoutSubviews {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }

    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _sessionSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscSessionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sessionCell"];
    if (!cell) {
        cell = [[FscSessionCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"sessionCell"];
    }
    FSCSession *session = [self.sessionSource objectAtIndex:indexPath.row];
    [cell setCellWithSession:session];
    return cell;
}

#pragma mark - Table View delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    FSCSession *session = _sessionSource[indexPath.row];
    FscChatCtrl *fscChatCtrl = [self.storyboard instantiateViewControllerWithIdentifier:@"FscChatCtrl"];
    [self.navigationController pushViewController:fscChatCtrl animated:YES];

}

@end
