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
        FscChatRecorder *recorder1 = [[FscChatRecorder alloc] init];
        recorder1.type = @(RECORDER_TYPE_MSG);
        recorder1.message = @"自从iPhone6和6plus出了之";
        [chatRecorderArray addObject:recorder1];

        FscChatRecorder *recorder2 = [[FscChatRecorder alloc] init];
        recorder2.type = @(RECORDER_TYPE_MSG);
        recorder2.message = @"自从iPhone6和6plus出了之后，可以说iPhone进入到了";
        [chatRecorderArray addObject:recorder2];

        FscChatRecorder *recorder3 = [[FscChatRecorder alloc] init];
        recorder3.type = @(RECORDER_TYPE_MSG);
        recorder3.message = @"自从iPhone6和6plus出了之后，可以说iPhone进入到了大屏时代。在小屏的时代，常";
        [chatRecorderArray addObject:recorder3];
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
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    ChatCell *cell;
    switch([recorder.type intValue]){
        //文字
        case RECORDER_TYPE_MSG:
            cell = [self getChatCell:chatTextLeftCell tableView:tableView];
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
    [cell setRecorder:recorder];
    return cell;
}


-(ChatCell *)getChatCell:(NSString *)key tableView:(UITableView *)tableView{
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:chatTipCell];
    if(!cell){
        cell = (ChatCell*)[[NSBundle mainBundle] loadNibNamed:key owner:self options:nil].lastObject;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ChatCell *cell= (ChatCell *)[self tableView: tableView cellForRowAtIndexPath: indexPath];
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];

//    CGFloat height= [cell getHeight];
    return 1+size.height;
}

@end
