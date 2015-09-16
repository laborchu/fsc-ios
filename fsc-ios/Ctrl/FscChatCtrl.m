//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscChatCtrl.h"
#import "ChatCell.h"
#import "FscChatRecorder.h"
#import "FscConstants.h"
#import "ChatTipCell.h"
#import "IosUtils.h"
#import "FscAppDelegate.h"
#import "FSCUser.h"

@interface FscChatCtrl () <UITableViewDataSource, UITableViewDelegate>
@property(weak, nonatomic) IBOutlet UITableView *chatTableView;

@end

@implementation FscChatCtrl {
    NSMutableArray *chatRecorderArray;
    FSCUser *_fscUser;
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        chatRecorderArray = [NSMutableArray array];
        FscChatRecorder *recorder1 = [[FscChatRecorder alloc] init];
        recorder1.type = @(RECORDER_TYPE_MSG);
        recorder1.message = @"自从iPhone6和6plus出了之";
        recorder1.createdBy = @(179);
        [chatRecorderArray addObject:recorder1];

        FscChatRecorder *recorder2 = [[FscChatRecorder alloc] init];
        recorder2.type = @(RECORDER_TYPE_MSG);
        recorder2.message = @"自从iPhone6和6plus出了之后，可以说iPhone进入到了";
        recorder2.createdBy = @(178);
        [chatRecorderArray addObject:recorder2];

        FscChatRecorder *recorder3 = [[FscChatRecorder alloc] init];
        recorder3.type = @(RECORDER_TYPE_IMG);
        recorder3.message = @"自从iPhone6和6plus出了之后，可以说iPhone进入到了大屏时代。在小屏的时代，常可以说iPhone进入到了大屏时代。在小屏的时代，常可以说iPhone进入到了大屏时代。在小屏的时代，常可以说iPhone进入到了大屏时代。在小屏的时代，常可以说iPhone进入到了大屏时代。在小屏的时代，常可以说iPhone进入到了大屏时代。在小屏的时代，常";
        recorder3.createdBy = @(179);
        [chatRecorderArray addObject:recorder3];

        FscAppDelegate *fscAppDelegate = [IosUtils getApp];
        _fscUser = fscAppDelegate.fscUser;
    }
    return self;
}

- (void)viewDidLayoutSubviews {
    self.chatTableView.delegate = self;
    self.chatTableView.dataSource = self;
    self.chatTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.chatTableView.allowsSelection = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return chatRecorderArray.count;
}


static NSString *chatTipCell = @"ChatTipCell";
static NSString *chatTextLeftCell = @"ChatTextLeftCell";
static NSString *chatTextRightCell = @"ChatTextRightCell";
static NSString *chatImgLeftCell = @"ChatImgLeftCell";

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    ChatCell *cell = [self getChatCell:tableView recorder:recorder];
    [cell setRecorder:recorder];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    ChatCell *cell = [self getChatCell:tableView recorder:recorder];
    [cell setRecorder:recorder];
    [cell layoutSubviews];
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}

- (ChatCell *)getChatCell:(UITableView *)tableView recorder:(FscChatRecorder *)recorder {
    ChatCell *cell;
    switch ([recorder.type intValue]) {
        //文字
        case RECORDER_TYPE_MSG:
            if([_fscUser.id intValue] == [recorder.createdBy intValue]){
                cell = [self getChatCell:chatTextRightCell tableView:tableView];
            }else{
                cell = [self getChatCell:chatTextLeftCell tableView:tableView];
            }
            break;
            //图片
        case RECORDER_TYPE_IMG:
            cell = [self getChatCell:chatImgLeftCell tableView:tableView];
            break;
            //语音
        case RECORDER_TYPE_VOICE:
            break;
            //时间
        case RECORDER_TYPE_TIME:
            break;
            //提示
        case RECORDER_TYPE_TIP:
            cell = [self getChatCell:chatTipCell tableView:tableView];
            break;
            //学习计划
        case RECORDER_TYPE_TEACH:
            break;
            //图文消息(通知公告、活动投票)
        case RECORDER_TYPE_IMG_TXT:
            break;
        case RECORDER_TYPE_P_MSG:
            break;
            //网盘文件
        case RECORDER_TYPE_DISK_FILE:
            break;
            //位置信息
        case RECORDER_TYPE_MAP:
            break;
            //网页内容
        case RECORDER_TYPE_WEB_VIEW:
            break;
    }
    return cell;
}


- (ChatCell *)getChatCell:(NSString *)key tableView:(UITableView *)tableView {
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:key];
    if (!cell) {
        cell = (ChatCell *) [[NSBundle mainBundle] loadNibNamed:key owner:self options:nil].lastObject;
    }
    return cell;
}

@end
