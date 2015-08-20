//
//  FSCEnum.h
//  FriendSchoolContacts
//
//  Created by 陈无忌 on 4/10/15.
//  Copyright (c) 2015 whalefin.Giab. All rights reserved.
//

#ifndef FriendSchoolContacts_FSCEnum_h
#define FriendSchoolContacts_FSCEnum_h

#import <MacTypes.h>

typedef enum USER_GENDER
{
    USER_MALE = 0,
    USER_FEMALE,
}USER_GENDER;

typedef enum USER_TYPE
{
    USER_TEACHER = 1,
    USER_PARENTS = 3,
}USER_TYPE;

enum
{
    //1申请2同意3拒绝
    USER_APPLY = 1,
    USER_ALLOW = 2,
    USER_REFUSE = 3,
};
typedef int32_t USE_REQUEST;


enum
{
    CHAT_SINGLE = 1,
    CHAT_GROUP = 2,
    CHAT_PULIC = 3,
    CHAT_CLASS = 4,
    CHAT_TRG = 5,
};
typedef SInt32 CHAT_TYPE;

enum {
    MessageTypeText     = 1 , // 文字
    MessageTypePicture  = 3 , // 图片
    MessageTypeVoice    = 2 ,  // 语音
    MessageTypeScore    = 6 , //成绩
    MessageTypeActivity    = 4,  //活动
    MessageTypeVote     = 5, //投票
    MessageTypeNotice   = 7 //通知
};
typedef SInt32 MESSAGE_TYPE;
#endif
