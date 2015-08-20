//
// Created by laborchu on 15/8/19.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscSessionCtrl.h"
#import "ContactsCell.h"

@interface FscSessionCtrl () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation FscSessionCtrl {

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
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactsCell *cell = [[ContactsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"sdfdsf"];
    return cell;
}

@end
