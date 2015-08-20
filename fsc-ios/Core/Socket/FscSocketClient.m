//
// Created by laborchu on 15/7/14.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "FscSocketClient.h"
#import "CmdSign.pb.h"
#import "ARsCmd.h"
#import "Scheduler.h"
#import "FscConstants.h"

static FscSocketClient *client = nil;

@implementation FscSocketClient {
}

//初始化重写
- (id)init
{
    self = [super init];
    if (self) {
        _responseData = [NSMutableData data];
        _commandMap = [NSMutableDictionary dictionary];
        //创建socket
        [self socketConnectCreate];
    }
    return self;
}

- (void)socketConnectCreate
{
    _socketConnect = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    //Socket连接
    NSError *err = nil;
    if ([_socketConnect connectToHost:DEFAULT_SERVER_IP onPort:DEFAULT_SERVER_PORT error:&err]) {
        //每间隔1秒读取一次数据
        [_socketConnect readDataWithTimeout:-1 tag:kGENERAL_TAG];
    }else{
        NSLog(@"连接创建失败");
    }
}

- (void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
    //读取服务器传回的数据
    [_responseData appendData:data];
    //To determine whether the data have the mark
    NSRange cutRange = [data rangeOfData:kCUTDATA options:NSDataSearchBackwards range:NSMakeRange(0, data.length)];
    if (cutRange.length > 0) {
        if (_responseData.length != 6) {
            //判断是服务器直接发送还是有请求响应
            CmdSignPb *signPb = [CmdSignPb parseFromData:_responseData];
            ARsCmd *cmd = _commandMap[[signPb token]];
            if (cmd) {
                [cmd resp:signPb];
                [_commandMap removeObjectForKey:[signPb token]];
            }
            [Scheduler doCmd];
        }else{
        }
        //清空数据控件
        _responseData = [NSMutableData data];
    }
    [_socketConnect readDataWithTimeout:-1 tag:kGENERAL_TAG];
}

/**
* 服务器连接成功
*/
- (void)socket:(GCDAsyncSocket *)sock didConnectToHost:(NSString *)host port:(uint16_t)port
{
    NSLog(@"已经连接到服务器：%@",host);
}

/**
* 与服务器连接断开/失败
*/
-(void)socketDidDisconnect:(GCDAsyncSocket *)sock withError:(NSError *)err
{
    NSLog(@"与服务器断开连接，由于：%@",err);
    //需要重连
    [_socketConnect connectToHost:DEFAULT_SERVER_IP onPort:DEFAULT_SERVER_PORT error:&err];
}

- (void)writeData:(NSData *)data
{
    NSMutableData *sendData = [NSMutableData dataWithData:data];
    //拼装截断
    [sendData appendData:kCUTDATA];
    //发送
    [_socketConnect writeData:sendData withTimeout:-1 tag:kGENERAL_TAG];
}

- (void)addCommand:(NSString *)token cmd:(ARsCmd *)cmd {
    _commandMap[token] = cmd;
}


+ (FscSocketClient *)getClient {
    if(!client){
        client = [[FscSocketClient alloc] init];
    }
    return client;
}

@end
