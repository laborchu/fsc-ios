//
// Created by laborchu on 15/7/14.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GCDAsyncSocket.h"

@class ARsCmd;

//Socket标识
#define kGENERAL_TAG 0x153
//数据截断
#define kCUTDATA [@"\r\n\n\n\r" dataUsingEncoding:NSUTF8StringEncoding]


@interface FscSocketClient : NSObject<GCDAsyncSocketDelegate>{
    GCDAsyncSocket *_socketConnect;
    NSMutableData *_responseData;
    NSMutableDictionary *_commandMap;
}

- (void)writeData:(NSData *)data;

-(void)addCommand:(NSString *)token cmd:(ARsCmd *)cmd;

/**
* 单例获取socket客户端
*/
+(FscSocketClient *) getClient;

@end
