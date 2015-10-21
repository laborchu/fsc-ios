//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
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
#import "UIColor+Hex.h"
#import "UIButton+BackgroundColor.h"
#import "FacialView.h"
#import "ResponderBtn.h"
#import "BbiUtils.h"
#import "MoreView.h"


@interface FscChatCtrl () <UITableViewDataSource, UITableViewDelegate,AVAudioRecorderDelegate,
        FacialViewDelegate,UITextViewDelegate,MoreViewDelegate>
@property(weak, nonatomic) IBOutlet UITableView *chatTableView;
@property(weak, nonatomic) IBOutlet UIButton *textVoiceBtn;
@property(weak, nonatomic) IBOutlet ResponderBtn *faceBtn;
@property(weak, nonatomic) IBOutlet ResponderBtn *moreBtn;
@property(weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@property(weak, nonatomic) IBOutlet UIButton *voiceBtn;
@property(weak, nonatomic) IBOutlet UITextView *textView;
@property(weak, nonatomic) IBOutlet UIView *chatRecorderHudView;
@property(weak, nonatomic) IBOutlet UIImageView *levelImg;
@property(weak, nonatomic) IBOutlet UILabel *voiceTip;
@property (weak, nonatomic) IBOutlet UIView *inputView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *inputViewConstraint;

@property (nonatomic, retain) FacialView *faceView;//表情
@property (nonatomic, retain) MoreView *moreView;//更多

@end

@implementation FscChatCtrl {
    NSMutableArray *chatRecorderArray;
    FSCUser *_fscUser;
    AChatHandler *_chatHandler;

    //录音声明
    double lowPassResults;
    NSMutableArray *volumImages;
    float _playTime;
    AVAudioRecorder *_audioRecorder;
    AVAudioSession *_audioSession;
    NSTimer *_audioTimer;
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
static NSString *chatFileLeftCell = @"ChatFileLeftCell";
static NSString *chatFileRightCell = @"ChatFileRightCell";
static NSString *chatMapLeftCell = @"ChatMapLeftCell";
static NSString *chatMapRightCell = @"ChatMapRightCell";



// 点击table
- (void)tableTouch {
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face"] forState:UIControlStateNormal];
    [self.view endEditing:YES];
}

// 文字输入状态
-(void)showInputState{
    self.voiceBtn.hidden = YES;
    self.textView.hidden = NO;
    [self.textView becomeFirstResponder];//显示键盘
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice"] forState:UIControlStateNormal];
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice_press"] forState:UIControlStateHighlighted];
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face"] forState:UIControlStateNormal];
}
// 语音输入状态
-(void)showVoiceState{
    self.voiceBtn.hidden = NO;
    self.textView.hidden = YES;
    [self.view endEditing:YES];//隐藏键盘
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_text"] forState:UIControlStateNormal];
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_text_press"] forState:UIControlStateHighlighted];
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face"] forState:UIControlStateNormal];
}
// 表情输入状态
-(void)showFaceState{
    self.voiceBtn.hidden = YES;
    self.textView.hidden = NO;
    [self.faceBtn becomeFirstResponder];//显示表情
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice"] forState:UIControlStateNormal];
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice_press"] forState:UIControlStateHighlighted];
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face_select"] forState:UIControlStateNormal];
}
// 表情输入状态
-(void)showMoreState{
    self.voiceBtn.hidden = YES;
    self.textView.hidden = NO;
    [self.moreBtn becomeFirstResponder];//显示表情
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice"] forState:UIControlStateNormal];
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice_press"] forState:UIControlStateHighlighted];
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face"] forState:UIControlStateNormal];

}



- (void)viewDidLoad {
    [super viewDidLoad];

    self.chatTableView.delegate = self;
    self.chatTableView.dataSource = self;
    self.chatTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.chatTableView.allowsSelection = NO;
    NSArray *cellArray = @[chatTipCell, chatTextLeftCell, chatTextRightCell,
            chatImgLeftCell, chatImgRightCell, chatVoiceLeftCell, chatVoiceRightCell,
            chatFileLeftCell, chatFileRightCell, chatMapLeftCell, chatMapRightCell];
    for (NSString *nibName in cellArray) {
        [self.chatTableView registerNib:[UINib nibWithNibName:nibName bundle:nil]
                 forCellReuseIdentifier:nibName];
    }

    UITapGestureRecognizer *anyTouch =
            [[UITapGestureRecognizer alloc]
                    initWithTarget:self action:@selector(tableTouch)];
    [self.chatTableView addGestureRecognizer:anyTouch];

    //文字语音切换按钮
    [self initTextVoiceBtn];

    //更多按钮
    [self initMoreBtn];
    //表情按钮
    [self initFaceBtn];
    //语音按钮
    [self initVoiceBtn];
    //输入框
    [self initTextField];
    //录音组件
    [self initAudioRecorder];

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

/****************更多  Start******************/
- (void)initMoreBtn {
    //表情按钮
    [self.moreBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_plus"] forState:UIControlStateNormal];
    [self.moreBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_plus_press"] forState:UIControlStateHighlighted];
    [self.moreBtn addTarget:self action:@selector(showMoreState) forControlEvents:UIControlEventTouchUpInside];
    self.moreView = [[MoreView alloc ]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 80)];
    self.moreView.delegate = self;
    self.moreView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F8"];
    [self.moreView loadMoreView];
    [self.moreBtn setInputView:self.moreView];
}

-(void)sendImg:(NSData*)data{

}
/****************更多  End******************/

/****************表情  Start******************/
- (void)initFaceBtn {
    //表情按钮
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face"] forState:UIControlStateNormal];
    [self.faceBtn addTarget:self action:@selector(showFaceState) forControlEvents:UIControlEventTouchUpInside];
    self.faceView = [[FacialView alloc ]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 160)];
    self.faceView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F8"];
    [self.faceView loadFacialView];
    self.faceView.delegate = self;
    [self.faceBtn setInputView:self.faceView];
}

#pragma mark - Face View
- (void)appendMsg:(NSString*)str{
    if (str.length > 0) {
        self.textView.text = [self.textView.text stringByAppendingString:str];
        [self textViewDidChange:self.textView];
    }
}

- (void)deleteMsg{
    if(self.textView.text.length>0){
        NSRange subRange = {self.textView.text.length-1, 1};
        BOOL isNotFacce = [self textView:self.textView shouldChangeTextInRange:subRange replacementText:@""];
        if(isNotFacce){
            self.textView.text = [self.textView.text substringToIndex:self.textView.text.length - 1];
            [self textViewDidChange:self.textView];
        }
    }
}


/****************表情  Start******************/

/****************输入框  Start******************/

- (void)initTextField {
    UIColor *borderColor = [UIColor colorWithHexString:@"#B1B1B3"];
    self.textView.hidden = NO;
    [self.textView.layer setBorderColor:[borderColor CGColor]];
    [self.textView.layer setCornerRadius:4];
    [self.textView.layer setBorderWidth:1];
    self.textView.delegate = self;
}
- (void)textViewDidChange:(UITextView *)textView
{
    CGSize sizeThatFitsTextView = [self.textView sizeThatFits:CGSizeMake(self.textView.frame.size.width, MAXFLOAT)];
    if(sizeThatFitsTextView.height<99){
        _inputViewConstraint.constant = sizeThatFitsTextView.height+7;
    }
    NSRange range = NSMakeRange(self.textView.text.length - 1, 1);
    [self.textView scrollRangeToVisible:range];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if([text isEqualToString:@""]&&range.length==1){
        NSString *changeText = [textView.text substringWithRange:range];
        if([changeText isEqualToString:@"]"]){
            NSRange firstRange = [textView.text rangeOfString:@"[" options:NSBackwardsSearch];
            if(firstRange.length==1){
                NSRange subRange = {firstRange.location, range.location-firstRange.location+1};
                NSString *subText = [textView.text substringWithRange:subRange];
                NSSet *emojiSet = [BbiUtils getEmojiSet];
                if([emojiSet containsObject:subText]){
                    textView.text = [textView.text stringByReplacingCharactersInRange:subRange withString:@""];
                    [self textViewDidChange:textView];
                    return NO;
                }
            }
        }
    }
    return YES;
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)aTextView
{
    [self.faceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_face"] forState:UIControlStateNormal];
    return YES;
}
/****************输入框  End******************/

/****************初始化组件  Start******************/
- (void)initTextVoiceBtn {
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice"] forState:UIControlStateNormal];
    [self.textVoiceBtn setBackgroundImage:[UIImage imageNamed:@"chat_input_voice_press"] forState:UIControlStateHighlighted];
    [self.textVoiceBtn addTarget:self action:@selector(textVoiceBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)textVoiceBtnClick:(UIButton *)sender {
    if(self.voiceBtn.hidden){
        [self showVoiceState];
    }else{
        [self showInputState];
    }
}

//录音按钮
- (void)initVoiceBtn {

    UIColor *borderColor = [UIColor colorWithHexString:@"#B1B1B3"];
    UIColor *pressBgColor = [UIColor colorWithHexString:@"#C6C7CC"];
    UIColor *bgColor = [UIColor colorWithHexString:@"#F6F6F8"];

    self.voiceBtn.hidden = YES;
    [self.voiceBtn.layer setBorderColor:[borderColor CGColor]];
    [self.voiceBtn.layer setCornerRadius:4];
    [self.voiceBtn.layer setBorderWidth:1];
    [self.voiceBtn setTitle:@"按住说话" forState:UIControlStateNormal];
    [self.voiceBtn setTitle:@"松开发送" forState:UIControlStateHighlighted];
    [self.voiceBtn setBackgroundColor:bgColor forState:UIControlStateNormal];
    [self.voiceBtn setBackgroundColor:pressBgColor forState:UIControlStateHighlighted];

    [self.voiceBtn addTarget:self action:@selector(beginRecordVoice:) forControlEvents:UIControlEventTouchDown];
    [self.voiceBtn addTarget:self action:@selector(endRecordVoice:) forControlEvents:UIControlEventTouchUpInside];
    [self.voiceBtn addTarget:self action:@selector(cancelRecordVoice:) forControlEvents:UIControlEventTouchUpOutside | UIControlEventTouchCancel];
    [self.voiceBtn addTarget:self action:@selector(remindDragExit:) forControlEvents:UIControlEventTouchDragExit];
    [self.voiceBtn addTarget:self action:@selector(remindDragEnter:) forControlEvents:UIControlEventTouchDragEnter];
}

// 开始录音
- (void)beginRecordVoice:(UIButton *)button {
    self.chatRecorderHudView.hidden = NO;
    [_audioRecorder record];
    _playTime = 0;
    //启动定时器,为了更新电平
    _audioTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(levelTimer:) userInfo:nil repeats:YES];
}
//结束录音
- (void)endRecordVoice:(UIButton *)button
{
    if (_audioTimer) {
        //录音停止
        [_audioRecorder stop];
        //结束定时器
        [_audioTimer invalidate];
        _audioTimer = nil;
        self.chatRecorderHudView.hidden = YES;
    }
}
//取消录音
- (void)cancelRecordVoice:(UIButton *)button
{
    _playTime = 0;
    if (_audioTimer) {
        [_audioRecorder stop];
        [_audioRecorder deleteRecording];
        [_audioTimer invalidate];
        _audioTimer = nil;
    }
    self.chatRecorderHudView.hidden = YES;
    self.voiceTip.text = @"正在录音";
}
//提示松开取消
- (void)remindDragExit:(UIButton *)button
{
    self.voiceTip.text = @"松开取消";
}
- (void)remindDragEnter:(UIButton *)button
{
    self.voiceTip.text = @"正在录音";
}
- (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag{
    if (flag && _playTime > 1) {
//        [self.delegate UUInputFunctionView:self sendVoice:recorder time:playTime];
    }
    _playTime = 0;
}


- (void)initAudioRecorder {
    //音量图片数组
    volumImages = [@[@"RecordingSignal001", @"RecordingSignal002", @"RecordingSignal003",
            @"RecordingSignal004", @"RecordingSignal005", @"RecordingSignal006",
            @"RecordingSignal007", @"RecordingSignal008"] mutableCopy];
    self.chatRecorderHudView.hidden = YES;
    _audioRecorder = nil;
    NSError *recorderSetupError = nil;

    //获得本地存储路径
    NSString *DocumentsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    //使用当前时间戳命名
    NSString *voicePath = [NSString stringWithFormat:@"%@/%lld.m4a",DocumentsPath,(SInt64)[NSDate date].timeIntervalSince1970];
    NSURL *url = [NSURL fileURLWithPath:voicePath];

    NSDictionary *settings = @{AVFormatIDKey : @(kAudioFormatMPEG4AAC),
            AVSampleRateKey : @44100.0F,
            AVNumberOfChannelsKey : @2,
            AVLinearPCMBitDepthKey : @16,
            AVLinearPCMIsBigEndianKey : @NO,
            AVLinearPCMIsFloatKey : @NO,
            AVEncoderAudioQualityKey : @(AVAudioQualityMax)};
    _audioRecorder = [[AVAudioRecorder alloc] initWithURL:url
                                                 settings:settings
                                                    error:&recorderSetupError];
    _audioRecorder.delegate = self;
    if (recorderSetupError) {
        NSLog(@"%@", recorderSetupError);
    }
    _audioRecorder.meteringEnabled = YES;
    [_audioRecorder prepareToRecord];
}
//更新电频和记录时间
-(void)levelTimer:(NSTimer*)timer
{
    [_audioRecorder updateMeters];
    const double ALPHA = 0.05;
    double peakPowerForChannel = pow(10, (0.05 * [_audioRecorder peakPowerForChannel:0]));
    lowPassResults = ALPHA * peakPowerForChannel + (1.0 - ALPHA) * lowPassResults;

    self.chatRecorderHudView.hidden = NO;
    if (lowPassResults>=0.8) {
        [self.levelImg setImage:[UIImage imageNamed:volumImages[7]]];
    }else if(lowPassResults>=0.7){
        [self.levelImg setImage:[UIImage imageNamed:volumImages[6]]];
    }else if(lowPassResults>=0.6){
        [self.levelImg setImage:[UIImage imageNamed:volumImages[5]]];
    }else if(lowPassResults>=0.5){
        [self.levelImg setImage:[UIImage imageNamed:volumImages[4]]];
    }else if(lowPassResults>=0.4){
        [self.levelImg setImage:[UIImage imageNamed:volumImages[3]]];
    }else if(lowPassResults>=0.3){
        [self.levelImg setImage:[UIImage imageNamed:volumImages[2]]];
    }else if(lowPassResults>=0.2){
        [self.levelImg setImage:[UIImage imageNamed:volumImages[1]]];
    }else{
        [self.levelImg setImage:[UIImage imageNamed:volumImages[0]]];
    }
    _playTime += 0.1;
}


/****************初始化组件  End******************/

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];

    if (chatRecorderArray.count > 0) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSIndexPath *ipath = [NSIndexPath indexPathForRow:chatRecorderArray.count - 1 inSection:0];
            [self.chatTableView scrollToRowAtIndexPath:ipath atScrollPosition:UITableViewScrollPositionTop animated:NO];
        });
    }

    //add keyborad notification
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardChange:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardChange:) name:UIKeyboardWillHideNotification object:nil];

}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];

    //add keyborad notification
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];

}

- (void)keyboardChange:(NSNotification *)notification {
    NSDictionary *userInfo = [notification userInfo];
    NSTimeInterval animationDuration;
    UIViewAnimationCurve animationCurve;
    CGRect keyboardEndFrame;

    [userInfo[UIKeyboardAnimationCurveUserInfoKey] getValue:&animationCurve];
    [userInfo[UIKeyboardAnimationDurationUserInfoKey] getValue:&animationDuration];
    [userInfo[UIKeyboardFrameEndUserInfoKey] getValue:&keyboardEndFrame];

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationDuration];
    [UIView setAnimationCurve:animationCurve];

    //adjust ChatTableView's height
    if (notification.name == UIKeyboardWillShowNotification) {
        self.bottomConstraint.constant = 0 - keyboardEndFrame.size.height;
    } else {
        self.bottomConstraint.constant = 0;
    }

    [self.view layoutIfNeeded];

    if (chatRecorderArray.count > 0) {
        NSIndexPath *ipath = [NSIndexPath indexPathForRow:chatRecorderArray.count - 1 inSection:0];
        [self.chatTableView scrollToRowAtIndexPath:ipath atScrollPosition:UITableViewScrollPositionTop animated:NO];
    }

    [UIView commitAnimations];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return chatRecorderArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    ChatCell *cell = [self getChatCell:tableView recorder:recorder];
    cell.chatHandler = _chatHandler;
    [cell setRecorder:recorder];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    FscChatRecorder *recorder = chatRecorderArray[indexPath.row];
    return [tableView fd_heightForCellWithIdentifier:[self getChatCellIdentifier:recorder] configuration:^(ChatCell *cell) {
        cell.chatHandler = _chatHandler;
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
            return chatTipCell;
            //提示
        case RECORDER_TYPE_TIP:
            return chatTipCell;
            //学习计划
        case RECORDER_TYPE_TEACH:
            break;
            //图文消息(通知公告、活动投票)
        case RECORDER_TYPE_IMG_TXT:
            break;
            //网盘文件
        case RECORDER_TYPE_DISK_FILE:
            if ([_fscUser.id intValue] == [recorder.createdBy intValue]) {
                return chatFileRightCell;
            } else {
                return chatFileLeftCell;
            }
            //位置信息
        case RECORDER_TYPE_MAP:
            if ([_fscUser.id intValue] == [recorder.createdBy intValue]) {
                return chatMapRightCell;
            } else {
                return chatMapLeftCell;
            }
            //网页内容
        case RECORDER_TYPE_WEB_VIEW:
            break;
    }
    return @"";
}

@end
