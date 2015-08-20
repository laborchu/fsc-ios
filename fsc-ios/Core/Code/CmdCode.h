//
//  CmdCode.h
//  fsc-ios
//
//  Created by laborchu on 15/7/28.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#ifndef fsc_ios_CmdCode____FILEEXTENSION___
#define fsc_ios_CmdCode____FILEEXTENSION___


#define FSC_TEST_MSG_POST @"FSC_TEST_MSG_POST"//测试数据:post

#define ERROR_POST @"ERROR_POST"//错误:post
#define SESSION_POST @"SESSION_POST"//会话:Post
#define FSC_SESSION_LIST @"FSC_SESSION_LIST"//会话:list
#define FSC_SESSION_PATCH @"FSC_SESSION_PATCH"//会话:patch
#define FSC_SESSION_POST @"FSC_SESSION_POST"//会话:post
#define FSC_SESSION_DELETE @"FSC_SESSION_DELETE"//会话:delete
#define FSC_LINKMAN_LIST @"FSC_LINKMAN_LIST"//获取联系人:get
#define FSC_CLASS_USER_LIST @"FSC_CLASS_USER_LIST"//获取班级用户:get
#define FSC_USER_GET @"FSC_USER_GET"//获取联系人:get
#define FSC_PUBLIC_USER_LIST @"FSC_PUBLIC_USER_LIST"
#define FSC_PUBLIC_RECORDER_POST @"FSC_PUBLIC_RECORDER_POST"//公众号发送消息:GET
#define FSC_TEACHER_LIST @"FSC_TEACHER_LIST"//获取老师信息

#define SEARCH_USER_LIST @"SEARCH_USER_LIST"//查询用户
#define ADD_LINKMAN_POST @"ADD_LINKMAN_POST"//添加联系人请求
#define ADD_LINKMAN_LIST @"ADD_LINKMAN_LIST"//获取添加联系人请求
#define PERSONAL_INFO_PATCH @"PERSONAL_INFO_PATCH"//修改用户信息
#define SESSION_DEL @"SESSION_DEL"//会话:del

#define FSC_LINKMAN_DELETE @"FSC_LINKMAN_DELETE"//删除联系人

#define FSC_CHAT_USER_RECORDER_POST @"FSC_CHAT_USER_RECORDER_POST"//用户聊天纪录:post
#define FSC_CHAT_USER_RECORDER_RESEND @"FSC_CHAT_USER_RECORDER_RESEND"//用户聊天纪录:resend

#define FSC_CHAT_GROUP_RECORDER_POST @"FSC_CHAT_GROUP_RECORDER_POST"//群聊纪录:post
#define FSC_CHAT_GROUP_RECORDER_RESEND @"FSC_CHAT_GROUP_RECORDER_RESEND"//群聊聊天纪录:resend

#define FSC_CHAT_CLASS_RECORDER_POST @"FSC_CHAT_CLASS_RECORDER_POST"//班级聊天纪录:post
#define FSC_CHAT_CLASS_RECORDER_RESEND @"FSC_CHAT_CLASS_RECORDER_RESEND"//班级聊天纪录:resend

#define FSC_CHAT_TRG_RECORDER_POST @"FSC_CHAT_TRG_RECORDER_POST"//教研组聊天纪录:post
#define FSC_CHAT_TRG_RECORDER_RESEND @"FSC_CHAT_TRG_RECORDER_RESEND"//教研组聊天纪录:resend

#define FSC_NOTIFY_POST @"FSC_NOTIFY_POST"//用户聊天纪录:post
#define FSC_GROUP_SESSION_POST @"FSC_GROUP_SESSION_POST"//群聊session:post
#define FSC_GROUP_SESSION_PATCH @"FSC_GROUP_SESSION_PATCH"//群聊session:patch
#define FSC_GROUP_SESSION_DEL @"FSC_GROUP_SESSION_DEL"//群聊session:delete
#define FSC_CLASS_LIST @"FSC_CLASS_LIST"//班级:list
#define FSC_TEACH_NODE_LIST @"FSC_TEACH_NODE_LIST"//教学计划节点:list
#define FSC_TEACH_NODE_POST @"FSC_TEACH_NODE_POST"//教学计划节点:POST
#define FSC_TEACH_NODE_STATUS_PATCH @"FSC_TEACH_NODE_STATUS_PATCH"//教学计划节点状态:patch
#define FSC_BBI_LIST @"FSC_BBI_LIST"//业务基础信息:list
#define FSC_EXAM_GET @"FSC_EXAM_GET"//试卷:GET
#define FSC_EXAM_PAPER_GET @"FSC_EXAM_PAPER_GET"//考试卷子:GET
#define FSC_EXAM_PAPER_POST @"FSC_EXAM_PAPER_POST"//考试卷子:POST
#define FSC_WORK_GET @"FSC_WORK_GET"//作业:GET
#define FSC_WORK_PAPER_GET @"FSC_WORK_PAPER_GET"//作业卷子:GET
#define FSC_WORK_PAPER_POST @"FSC_WORK_PAPER_POST"//作业卷子:POST
#define FSC_SCORE_LIST @"FSC_SCORE_LIST"//学习反馈-成绩:list
#define FSC_KNOWL_LIST @"FSC_KNOWL_LIST"//学习反馈-知识点:list

#define FSC_TIMETABLE_LIST @"FSC_TIMETABLE_LIST"//课表:LIST
#define FSC_NOTICE_LIST @"FSC_NOTICE_LIST"//通知公告资讯:LIST
#define FSC_ACTIVITY_LIST @"FSC_ACTIVITY_LIST"//活动:LIST
#define FSC_ACTIVITY_PATCH @"FSC_ACTIVITY_PATCH"//活动:PATCH
#define FSC_VOTE_LIST @"FSC_VOTE_LIST"//投票:LIST
#define FSC_VOTE_PATCH @"FSC_VOTE_PATCH"//投票:PATCH

#define FSC_SNS_MSG_LIST @"FSC_SNS_MSG_LIST"//SNS-消息:LIST
#define FSC_SNS_MSG_POST @"FSC_SNS_MSG_POST"//SNS-消息:POST
#define FSC_SNS_SINA_MSG_POST @"FSC_SNS_SINA_MSG_POST"//SNS-消息:PATCH
#define FSC_SNS_SINA_MSG_LIST @"FSC_SNS_SINA_MSG_LIST"//SNS-消息:POST
#define FSC_SNS_MSG_DEL @"FSC_SNS_MSG_DEL"//SNS-消息:DEL
#define FSC_SNS_PRAISE_POST @"FSC_SNS_PRAISE_POST"//SNS-赞:POST
#define FSC_SNS_PRAISE_DEL @"FSC_SNS_PRAISE_DEL"//SNS-赞:DEL
#define FSC_SNS_CMT_POST @"FSC_SNS_CMT_POST"//SNS-评论:POST
#define FSC_SNS_CMT_DEL @"FSC_SNS_CMT_DEL"//SNS-评论:DEL

#define FSC_MSG_LIST @"FSC_MSG_LIST"//消息:LIST
#define FSC_DISK_FILE_LIST @"FSC_DISK_FILE_LIST"//网盘文件:LIST
#define FSC_DISK_FILE_GET @"FSC_DISK_FILE_GET"//网盘文件:GET
#define FSC_DISK_FILE_POST @"FSC_DISK_FILE_POST"//网盘文件:POST
#define FSC_DISK_FILE_PATCH @"FSC_DISK_FILE_PATCH"//网盘文件:PATCH
#define FSC_DISK_FILE_DEL @"FSC_DISK_FILE_DEL"//网盘文件:DEL


#define FSC_QUES_LIST @"FSC_QUES_LIST"//问答社区-问题:LIST
#define FSC_QUES_POST @"FSC_QUES_POST"//问答社区-问题:POST
#define FSC_ANSWER_LIST @"FSC_ANSWER_LIST"//问答社区-回答:LIST
#define FSC_ANSWER_POST @"FSC_ANSWER_POST"//问答社区-回答:POST
#define FSC_ANSWER_DEL @"FSC_ANSWER_DEL"//问答社区-回答:DEL
#endif