//
// Created by laborchu on 15/7/27.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CmdSignPb;
@class FSCUser;

@interface ARsCmd : NSObject

@property (nonatomic) BOOL *doSend;

-(CmdSignPb *)buildCmdSignPb:(NSString *)cmdCode data:(id)data;


- (bool)send:(NSString *)cmdCode data:(id)data;

- (NSData *)pbToData:(id)pb;

-(void) req;

-(void) resp:(CmdSignPb *)sign;

- (FSCUser *)getFscUser;

- (void)savaData;

/**
* 等待执行列表中只允许存在一个实例
*/
-(BOOL) isSingleReq;

/**
* 获取命令code
*/
-(NSString *) getCmdCode;

@end
