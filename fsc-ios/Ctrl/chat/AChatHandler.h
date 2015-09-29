//
// Created by laborchu on 15/9/21.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FSCSession;
@class FscChatRecorder;


@interface AChatHandler : NSObject

@property (nonatomic, retain) FSCSession *fscSession;

//获取记录列表
-(NSArray *)getRecorderList:(NSNumber *)lastId;

//构建统一聊天记录
-(FscChatRecorder *) buildChatRecorder:(id)fscRecorder;

/**
 * 设置头像和名字
 */
-(void)setRecorder:(FscChatRecorder *)recorder avatarImg:(UIImageView *)avatarImg nameLabel:(UILabel *)nameLabel;

@end
