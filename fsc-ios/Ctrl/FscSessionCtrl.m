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

@interface FscSessionCtrl () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
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
        [self reloadLinkman];
    }
    return self;
}

- (void) reloadLinkman{
    ALcCmd *cmd = [[LcFscSessionListCmd alloc] initDefault];
    NSArray *array = [Scheduler exeLc:cmd];
    for (FSCSession *fscSession in array) {
        [self addFscSession:fscSession atIndex:(NSUInteger) -1];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sessionListHandler:) name:MSG_FSC_SESSION_UPDATE object:nil];
}


- (void)sessionListHandler:(NSNotification *)notify {
    NSMutableArray *sessionArray =  notify.object;
    for (FSCSession *fscSession in sessionArray) {
        if([fscSession.dataStatus intValue] ==0){
            if(_sessionDicCache[fscSession.id]){
                [_sessionSource removeObject:_sessionDicCache[fscSession.id]];
                [_sessionDicCache removeObjectForKey:fscSession.id];
            }
            continue;
        }

        if(_sessionDicCache[fscSession.id]){
            continue;
        }
        [self addFscSession:fscSession atIndex:0];
    }
    [[self tableView] reloadData];
}

-(void)addFscSession:(FSCSession *)session atIndex:(NSUInteger)index{
    if(index==-1){
        [_sessionSource addObject:session];
    }else{
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

@end
