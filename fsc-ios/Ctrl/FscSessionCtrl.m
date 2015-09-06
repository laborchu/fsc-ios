//
// Created by laborchu on 15/8/19.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscSessionCtrl.h"
#import "ContactsCell.h"
#import "LcFscSessionListCmd.h"
#import "Scheduler.h"
#import "FscSessionCell.h"
#import "FSCSession.h"

@interface FscSessionCtrl () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) NSMutableArray *sessionSource;
@end

@implementation FscSessionCtrl {

}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        _sessionSource = [[NSMutableArray alloc] initWithCapacity:3];
        [self reloadLinkman];
    }
    return self;
}

- (void) reloadLinkman{
    ALcCmd *cmd = [[LcFscSessionListCmd alloc] init];
    NSArray *array = [Scheduler exeLc:cmd];
    [_sessionSource addObjectsFromArray:array];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
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
