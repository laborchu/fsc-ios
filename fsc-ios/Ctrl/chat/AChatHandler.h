//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FSCSession;
@class FscChatRecorder;


@interface AChatHandler : NSObject

@property (nonatomic, retain) FSCSession *fscSession;

//获取记录列表
-(NSArray *)getRecorderList:(NSNumber *)lastId;

//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(id)fscRecorder;

@end
