//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscChatCtrl.h"
#import "ChatCell.h"
#import "FscChatRecorder.h"
#import "FscConstants.h"
#import "FSCSession.h"
#import "IosUtils.h"
#import "FscAppDelegate.h"
#import "FSCUser.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "AChatHandler.h"
#import "UserChatHandler.h"
#import "GroupChatHandler.h"
#import "ClassChatHandler.h"
#import "TrgChatHandler.h"
#import "PublicChatHandler.h"

@interface FscChatCtrl () <UITableViewDataSource, UITableViewDelegate>
@property(weak, nonatomic) IBOutlet UITableView *chatTableView;
@end

@implementation FscChatCtrl {
    NSMutableArray *chatRecorderArray;
    FSCUser *_fscUser;
    AChatHandler *_chatHandler;
}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
        _fscUser = [IosUtils getFscUser];
    }
    return self;
}

static NSString *chatTipCell = @"ChatTipCell";
static NSString *chatTextLeftCell = @"ChatTextLeftCell";
static NSString *chatTextRightCell = @"ChatTextRightCell";
static NSString *chatImgLeftCell = @"ChatImgLeftCell";
static NSString *chatImgRightCell = @"ChatImgRightCell";
static NSString *chatVoiceLeftCell = @"ChatVoiceLeftCell";
static NSString *chatVoiceRightCell = @"ChatVoiceRightCell";

- (void)viewDidLayoutSubviews {
    self.chatTableView.delegate = self;
    self.chatTableView.dataSource = self;
    self.chatTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.chatTableView.allowsSelection = NO;
    NSArray *cellArray = @[chatTipCell, chatTextLeftCell, chatTextRightCell, chatImgLeftCell,
            chatImgRightCell, chatVoiceLeftCell, chatVoiceRightCell];
    for (NSString *nibName in cellArray) {
        [self.chatTableView registerNib:[UINib nibWithNibName:nibName bundle:nil]
                 forCellReuseIdentifier:nibName];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([self.fscSession.type isEqualToNumber:@(SESSION_TYPE_USER_CHAT)]) {
        _chatHandler = [[UserChatHandler alloc] init];
    } else if ([self.fscSession.type isEqualToNumber:@(SESSION_TYPE_GROUP_CHAT)]) {
        _chatHandler = [[GroupChatHandler alloc] init];
    } else if ([self.fscSession.type isEqualToNumber:@(SESSION_TYPE_CLASS_CHAT)]) {
        _chatHandler = [[ClassChatHandler alloc] init];
    } else if ([self.fscSession.type isEqualToNumber:@(SESSION_TYPE_TRG_CHAT)]) {
        _chatHandler = [[TrgChatHandler alloc] init];
    } else if ([self.fscSession.type isEqualToNumber:@(SESSION_TYPE_PUBLIC_CHAT)]) {
        _chatHandler = [[PublicChatHandler alloc] init];
    }
    _chatHandler.fscSession = self.fscSession;
    chatRecorderArray = [NSMutableArray array];
    NSArray *recorders = [_chatHandler getRecorderList:nil];
    for (id recorder in recorders) {
        FscChatRecorder *chatRecorder = [_chatHandler buildChatRecorder:recorder];
        [chatRecorderArray addObject:chatRecorder];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    if (chatRecorderArray.count > 0) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSIndexPath *ipath = [NSIndexPath indexPathForRow:chatRecorderArray.count - 1 inSection:0];
            [self.chatTableView scrollToRowAtIndexPath:ipath atScrollPosition:UITableViewScrollPositionTop animated:NO];
        });
    }
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return chatRecorderArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    ChatCell *cell = [self getChatCell:tableView recorder:recorder];
    [cell setRecorder:recorder];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    return [tableView fd_heightForCellWithIdentifier:[self getChatCellIdentifier:recorder] configuration:^(ChatCell *cell) {
        [cell setRecorder:recorder];
    }];
}

- (ChatCell *)getChatCell:(UITableView *)tableView recorder:(FscChatRecorder *)recorder {
    return [self getChatCell:[self getChatCellIdentifier:recorder] tableView:tableView];
}

- (ChatCell *)getChatCell:(NSString *)key tableView:(UITableView *)tableView {
    ChatCell *cell = [tableView dequeueReusableCellWithIdentifier:key];
    if (!cell) {
        cell = (ChatCell *) [[NSBundle mainBundle] loadNibNamed:key owner:self options:nil].lastObject;
    }
    return cell;
}

- (NSString *)getChatCellIdentifier:(FscChatRecorder *)recorder {
    switch ([recorder.type intValue]) {
        //文字
        case RECORDER_TYPE_MSG:
            if ([_fscUser.id intValue] == [recorder.createdBy intValue]) {
                return chatTextRightCell;
            } else {
                return chatTextLeftCell;
            }
            //图片
        case RECORDER_TYPE_IMG:
            if ([_fscUser.id intValue] == [recorder.createdBy intValue]) {
                return chatImgRightCell;
            } else {
                return chatImgLeftCell;
            }
            //语音
        case RECORDER_TYPE_VOICE:
            if ([_fscUser.id intValue] == [recorder.createdBy intValue]) {
                return chatVoiceRightCell;
            } else {
                return chatVoiceLeftCell;
            }
            //时间
        case RECORDER_TYPE_TIME:
            break;
            //提示
        case RECORDER_TYPE_TIP:
            return chatTipCell;
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
    return @"";
}

@end
