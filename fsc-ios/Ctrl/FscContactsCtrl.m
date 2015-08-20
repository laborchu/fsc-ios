//
// Created by laborchu on 15/8/11.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <mach-o/loader.h>
#import "FscContactsCtrl.h"
#import "ALcCmd.h"
#import "FscAppDelegate.h"
#import "IosUtils.h"
#import "FSCUser.h"
#import "FSCEnum.h"
#import "Scheduler.h"
#import "LcFscLinkmanListCmd.h"
#import "FSCLinkman.h"
#import "FscConstants.h"
#import "UIImageView+UIActivityIndicatorForSDWebImage.h"
#import "ContactsCell.h"
#import "ChineseToPinyin.h"
#import "ZBarSymbol.h"

@interface FscContactsCtrl () <UITableViewDataSource, UITableViewDelegate>

@property(weak, nonatomic) IBOutlet UITableView *tableView;

@property(strong, nonatomic) NSMutableArray *otherGroupSource;
@property(strong, nonatomic) NSMutableArray *applyGroupSource;

@property(strong, nonatomic) NSMutableArray *contactTitles;
@property(strong, nonatomic) NSMutableArray *contactGroupSource;

@end

@implementation FscContactsCtrl {
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        _otherGroupSource = [[NSMutableArray alloc] initWithCapacity:3];
        FscAppDelegate *fscAppDelegate = [IosUtils getApp];
        FSCUser *fscUser = fscAppDelegate.fscUser;
        if ([fscUser.userType isEqualToNumber:@(USER_TEACHER)]) {
            [_otherGroupSource addObject:@{@"name" : @"公众服务", @"icon" : @"contact_service"}];
            [_otherGroupSource addObject:@{@"name" : @"教师组", @"icon" : @"contact_teacher"}];
            [_otherGroupSource addObject:@{@"name" : @"我的班级", @"icon" : @"contact_class"}];
            [_otherGroupSource addObject:@{@"name" : @"群组", @"icon" : @"contact_trg"}];
        } else if ([fscUser.userType isEqualToNumber:@(USER_PARENTS)]) {
            [_otherGroupSource addObject:@{@"name" : @"公众服务", @"icon" : @"contact_service"}];
            [_otherGroupSource addObject:@{@"name" : @"我的班级", @"icon" : @"contact_class"}];
            [_otherGroupSource addObject:@{@"name" : @"群组", @"icon" : @"contact_trg"}];
        }
        _applyGroupSource = [NSMutableArray array];

        _contactTitles = [NSMutableArray array];
        _contactGroupSource = [NSMutableArray array];
        [self reloadLinkman];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

//重新加载联系人
- (void)reloadLinkman {
    UILocalizedIndexedCollation *indexedCollation = [UILocalizedIndexedCollation currentCollation];
    [self.contactTitles removeAllObjects];
    [self.contactTitles addObjectsFromArray:[indexedCollation sectionTitles]];

    NSUInteger contactCount = [self.contactTitles count];
    NSMutableArray *sortedArray = [NSMutableArray arrayWithCapacity:(NSUInteger) contactCount];
    for (int i = 0; i < contactCount; ++i) {
        NSMutableArray *sectionArray = [NSMutableArray arrayWithCapacity:1];
        [sortedArray addObject:sectionArray];
    }

    NSArray *userList = [Scheduler exeLc:[[LcFscLinkmanListCmd alloc] init]];
    for (FSCLinkman *fscLinkman in userList) {
        NSString *letter = [ChineseToPinyin pinyinFromChineseString:fscLinkman.name];
        NSUInteger section;
        @try {
            section = (NSUInteger) [indexedCollation sectionForObject:[letter substringToIndex:1] collationStringSelector:@selector(uppercaseString)];
        } @catch (NSException *e) {
            section = 26;
        }
        NSMutableArray *array = sortedArray[section];
        [array addObject:fscLinkman];
    }
    for (int j = 0; j < contactCount; ++j) {
        NSArray *array = [sortedArray[j] sortedArrayUsingComparator:^NSComparisonResult(FSCLinkman *obj1, FSCLinkman *obj2) {
            NSString *firstLetter1 = [ChineseToPinyin pinyinFromChineseString:obj1.name];
            firstLetter1 = [[firstLetter1 substringToIndex:1] uppercaseString];

            NSString *firstLetter2 = [ChineseToPinyin pinyinFromChineseString:obj2.name];
            firstLetter2 = [[firstLetter2 substringToIndex:1] uppercaseString];

            return [firstLetter1 caseInsensitiveCompare:firstLetter2];
        }];
        sortedArray[j] = [NSMutableArray arrayWithArray:array];
    }
    [self.contactGroupSource removeAllObjects];
    [self.contactGroupSource addObjectsFromArray:sortedArray];
}

- (void)viewDidLayoutSubviews {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    self.tableView.contentInset = UIEdgeInsetsMake(0, -10, 0, 0);
    self.tableView.separatorInset = UIEdgeInsetsZero;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
}

-(NSUInteger) getSectionPlus{
    if([self.applyGroupSource count]>0){
        return 2;
    }else{
        return 1;
    }
}

#pragma mark 返回分组数

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self getSectionPlus] + self.contactTitles.count;
}

#pragma mark 返回每组行数

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return _otherGroupSource.count;
    } else if (section == 1&&[self getSectionPlus]==2) {
        return _applyGroupSource.count;
    } else {
        NSMutableArray *array = _contactGroupSource[section-[self getSectionPlus]];
        return [array count];
    }
}

static NSString *otherGroupCell = @"otherGroupCell";
static NSString *applyGroupCell = @"applyGroupCell";
static NSString *contactGroupCell = @"contactGroupCell";

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactsCell *cell;
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:otherGroupCell];
    } else if (indexPath.section == 1&&[self getSectionPlus]==2) {
        cell = [tableView dequeueReusableCellWithIdentifier:applyGroupCell];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:contactGroupCell];
    }
    if (!cell) {
        if (indexPath.section == 0) {
            cell = [[ContactsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:otherGroupCell];
        } else if (indexPath.section == 1&&[self getSectionPlus]==2) {
            cell = [[ContactsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:applyGroupCell];
        } else {
            cell = [[ContactsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:contactGroupCell];
        }
    }

    if (indexPath.section == 0) {
        if (indexPath.row < self.otherGroupSource.count) {
            NSDictionary *otherDataItem = _otherGroupSource[indexPath.row];
            cell.textLabel.text = otherDataItem[@"name"];

            [cell.imageView setImage:[UIImage imageNamed:otherDataItem[@"icon"]]];
            return cell;
        }
    } else if (indexPath.section == 1&&[self getSectionPlus]==2) {
        return cell;
    } else {
        FSCLinkman *contactDataItem = [self.contactGroupSource[indexPath.section - [self getSectionPlus]] objectAtIndex:indexPath.row];
        cell.textLabel.text = contactDataItem.name;
        if (contactDataItem.portrait && contactDataItem.portrait.length) {
            NSURL *imagurl = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", RES_SERVER, contactDataItem.portrait]];
            [cell.imageView setImageWithURL:imagurl placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        } else {
            [cell.imageView setImage:[UIImage imageNamed:@"default_avatar"]];
        }
        return cell;
    }
    return NULL;
}

#pragma mark - Table view delegate

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"";
    } else if (section == 1&&[self getSectionPlus]==2) {
        return [self.applyGroupSource count] > 0 ? @"新的朋友" : @"";
    } else {
        NSMutableArray *array = self.contactGroupSource[section - [self getSectionPlus]];
        return [array count] > 0 ?  self.contactTitles[section - [self getSectionPlus]] : @"";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    NSString *title = [self tableView:tableView titleForHeaderInSection:section];
    if([title isEqualToString:@""]){
        return 0;
    }else{
        return 20;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.frame = CGRectMake(20, 0, 20, 20);
    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
    myLabel.font = [UIFont systemFontOfSize:12 ];
    myLabel.textColor = [UIColor grayColor];
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [headerView addSubview:myLabel];
    return headerView;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    NSMutableArray *existTitles = [NSMutableArray array];
    //section数组为空的title过滤掉，不显示
    for (int i = 0; i < [self.contactTitles count]; i++) {
        NSMutableArray *contactArray = self.contactGroupSource[i];
        if ([contactArray count] > 0) {
            [existTitles addObject:self.contactTitles[i]];
        }
    }
    return existTitles;

}

@end
