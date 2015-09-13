//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscChatCtrl.h"
#import "ChatCell.h"
#import "FscChatRecorder.h"
#import "FscConstants.h"
#import "ChatTipCell.h"

@interface FscChatCtrl () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *chatTableView;

@end

@implementation FscChatCtrl {
    NSMutableArray *chatRecorderArray;
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        chatRecorderArray = [NSMutableArray array];
        FscChatRecorder *recorder = [[FscChatRecorder alloc] init];
        recorder.type = @(RECORDER_TYPE_TIP);
        recorder.message = @"22:22";
        [chatRecorderArray addObject:recorder];
        [chatRecorderArray addObject:recorder];
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


static NSString *tipCell = @"ChatTipCell";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    ChatCell *cell;
    switch([recorder.type intValue]){
        //文字
        case RECORDER_TYPE_MSG:
            break;
            //图片
        case RECORDER_TYPE_IMG:
            break;
            //语音
        case RECORDER_TYPE_VOICE:
            break;
            //时间
        case RECORDER_TYPE_TIME:
            break;
            //提示
        case RECORDER_TYPE_TIP:
            cell = [self getChatCell:tipCell tableView:tableView];
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
    [cell setRecorder:recorder];
    return cell;
}


-(ChatCell *)getChatCell:(NSString *)key tableView:(UITableView *)tableView{
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:tipCell];
    if(!cell){
        cell = (ChatCell*)[[NSBundle mainBundle] loadNibNamed:key owner:self options:nil].lastObject;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatCell *cell= (ChatCell *)[self tableView: tableView cellForRowAtIndexPath: indexPath];
    CGFloat height= [cell getView].frame.size.height;
    return height;
}

@end
