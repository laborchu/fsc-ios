//
//  PbFieldDefine.h
//  fsc-ios
//
//  Created by laborchu on 15/7/30.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#ifndef fsc_ios_PbFieldDefine____FILEEXTENSION___
#define fsc_ios_PbFieldDefine____FILEEXTENSION___

#define PB_USER_FIELDS  @[@"id", @"schoolId", @"uuid", @"username", @"portrait", @"password", @"name", @"userType", @"phaseId", @"gender", @"address", @"email", @"token", @"schoolName"]
#define PB_CLASS_FIELDS  @[@"id", @"year", @"semester", @"className:classname", @"gradeId", @"gradeName", @"monitorUrl"]
#define PB_STUDENT_FIELDS  @[@"id", @"name", @"classId", @"gradeId"]
#define LINKMAN_FIELDS @[@"id", @"name", @"userType", @"portrait",@"gender", @"email", @"createdDate", @"schoolName", @"mobile", @"title", @"subjectName", @"status", @"modifiedDate", @"timestamp"]
#define FSC_CLASS_USER_FIELDS @[@"id", @"classId", @"name", @"userType", @"gender", @"modifiedDate", @"schoolName", @"portrait", @"userStatus", @"studentName"]
#define FSC_CLASS_STUDENT_FIELDS @[@"id", @"classId", @"name", @"userType", @"gender", @"gradeId", @"schoolName", @"portrait", @"dataStatus", @"modifiedDate"]
#define FSC_TEACHER_FIELDS @[@"id", @"name", @"portrait", @"gender", @"mobile", @"subjectId", @"dataStatus", @"modifiedDate"]

#define SIGN_FIELDS @[@"cmdCode", @"reqCode", @"respCode", @"msg", @"source", @"token", @"openTransaction", @"isAcross"]
#define FSC_UPDATE_TAG @[@"schoolId", @"subjectDate"]
#define FSC_ERROR_FIELDS @[@"userId", @"deviceId", @"subscriberId", @"model", @"Brand", @"number", @"appVersion", @"osVersion", @"errorMsg", @"createdDate"]
#define FSC_FUNC_STAT_FIELDS @[@"userId", @"code", @"createdDate"]

#define USER_FIELDS @[@"id", @"schoolId", @"uuid", @"username", @"portrait", @"password","name", @"userType", @"phaseId", @"gender", @"address", @"email", @"token", @"schoolName", @"file"]
#define SCHOOL_FIELDS @[@"id", @"name", @"year", @"semester"]
#define FUNC_CTRL_FIELDS @[@"schoolId", @"funcCode", @"status"]
#define FSC_USER_FIELDS @[@"id", @"name", @"gender", @"userType", @"portrait", @"schoolName"]

#define TEACHER_FIELDS @[@"mobile", @"title", @"subjectId", @"subjectName"]
#define PARENTS_FIELDS @[@"mobile"]
#define STUDENT_FIELDS @[@"id", @"name", @"classId", @"gradeId"]


#define FSC_SESSION_FIELDS @[@"id", @"type", @"msId", @"msName", @"sessionId", @"dataStatus", @"modifiedDate", @"readId", @"lastId", @"timestamp"]
#define CHAT_USER_SESSION_FIELDS @[@"id", @"uuid", @"fromUserId", @"toUserId", @"createdDate", @"timestamp"]
#define CHAT_USER_RECORDER_FIELDS @[@"id", @"uuid", @"sessionId", @"fromUserId", @"toUserId",@"type", @"message", @"voiceLength", @"createdDate", @"file", @"timestamp"]

#define CHAT_GROUP_SESSION_FIELDS @[@"id", @"name", @"uuid", @"leaderId", @"createdDate", @"timestamp", @"nameStatus", @"portrait", @"file"]
#define CHAT_GROUP_USER_FIELDS @[@"sessionId", @"userId", @"inviterId", @"status", @"createdDate", @"modifiedDate", @"timestamp"]
#define CHAT_GROUP_RECORDER_FIELDS @[@"id", @"uuid", @"sessionId",@"type", @"message", @"voiceLength", @"createdBy", @"createdDate", @"file", @"timestamp"]
#define CHAT_GROUP_PORTRAIT_FIELDS @[@"id", @"file"]

#define CHAT_TRG_SESSION_FIELDS @[@"id", @"schoolId", @"uuid", @"sessionType", @"year", @"semester", @"gradeId", @"subjectId", @"name", @"dataStatus", @"createdDate", @"timestamp"]
#define CHAT_TRG_USER_FIELDS @[@"sessionId", @"userId", @"status", @"name", @"userType", @"gender", @"schoolName", @"portrait", @"createdDate", @"modifiedDate", @"timestamp"]
#define CHAT_TRG_RECORDER_FIELDS @[@"id", @"uuid", @"sessionId",@"type", @"message", @"voiceLength", @"createdBy", @"createdDate", @"file", @"timestamp"]

#define CHAT_PUBLIC_USER_FIELDS @[@"id", @"code", @"isGroup", @"groupCode", @"name", @"introduce", @"inputMsg", @"inputMenu", @"dataStatus", @"modifiedDate"]

#define CHAT_PUBLIC_MENU_FIELDS @[@"id", @"publicId", @"itemName", @"itemType", @"itemMsg", @"parentId", @"isParent", @"index", @"dataStatus", @"modifiedDate"]
#define CHAT_PUBLIC_SESSION_FIELDS @[@"id", @"publicId", @"publicCode", @"userId", @"createdDate", @"timestamp"]
#define CHAT_PUBLIC_RECORDER_FIELDS @[@"id", @"uuid", @"sessionId", @"fromType", @"fromUserId", @"toUserId",@"type", @"message", @"createdDate", @"timestamp", @"file"]

#define CHAT_CLASS_SESSION_FIELDS @[@"id", @"uuid", @"name", @"classId", @"createdDate", @"timestamp"]
#define CHAT_CLASS_RECORDER_FIELDS @[@"id", @"uuid", @"sessionId",@"type", @"message", @"voiceLength", @"createdBy", @"createdDate", @"file", @"timestamp", @"extendId"]

#define PERSONAL_PORTRAIT_FIELDS @[@"id", @"file"]
#define PERSONAL_INFO_FIELDS @[@"id", @"name", @"gender"]
#define CLASS_FIELDS @[@"id", @"year", @"semester", @"className", @"gradeId", @"gradeName", @"monitorUrl"]
#define TEACH_NODE_FIELDS @[@"id", @"schoolId", @"subjectId","name", @"step", @"type", @"resId", @"imgText", @"nodeTime", @"modifiedDate", @"studentId", @"teacherName", @"nodeStatus", @"score", @"dataStatus","classId", @"correctCount", @"submitCount", @"total", @"isRead", @"isFinish", @"picture", @"voice", @"file"]
#define TEACH_NODE_DETAILS_FIELDS @[@"planNodeId", @"classId", @"studentId", @"studentName", @"totalScore", @"isRead", @"isSubmit", @"isCorrect", @"isFinish", @"modifiedDate"]
#define SCORE_FIELDS @[@"id", @"schoolId", @"subjectId", @"examName", @"studentId", @"score", @"modifiedDate", @"dataStatus"]
#define SCORE_STU_FIELDS @[@"scoreId", @"studentId", @"score", @"studentName", @"classId"]
#define KNOWL_FIELDS @[@"id", @"schoolId", @"classId", @"subjectId", @"KnowlPointId", @"studentId", @"rightCount", @"WrongCount", @"accuracy", @"modifiedDate", @"dataStatus", @"depth", @"KnowlPointName", @"parentId", @"isParent"]

#define FSC_SUBJECT @[@"id", @"name"]

#define FSC_EXAM_FIELD @[@"paperId", @"examType", @"title", @"totalScore", @"studentScore", @"WorkStatus", @"sheetPath"]
#define FSC_EXAM_PAPER_FIELD @[@"paperId", @"studentScore", @"WorkStatus", @"sheetPath", @"sheetFile"]
#define FSC_WORK_FIELD @[@"paperId", @"title", @"totalScore", @"studentScore", @"WorkStatus", @"sheetPath"]
#define FSC_WORK_PAPER_FIELD @[@"paperId", @"studentScore", @"WorkStatus", @"sheetPath", @"sheetFile"]

#define FSC_TIMETABLE_FIELD @[@"year", @"semester", @"classId", @"time", @"period", @"schoolId", @"monSubject", @"tueSubject", @"WedSubject", @"thuSubject", @"friSubject", @"satSubject", @"sunSubject"]
#define FSC_NOTICE_FIELD @[@"id", @"noticeType", @"title", @"coverImg", @"createdDate", @"modifiedDate"]
#define FSC_ACTIVITY_FIELD @[@"id", @"actName", @"coverImg", @"modifiedDate", @"deadline", @"startTime", @"endTime", @"desc", @"actNum", @"applyStatus"]
#define FSC_VOTE_FIELD @[@"id", @"voteName", @"voteNum", @"coverImg", @"deadline", @"modifiedDate", @"applyStatus"]
#define FSC_VOTE_QUES_FIELD @[@"id", @"voteId", @"title", @"checkType"]
#define FSC_VOTE_QUES_ITEM_FIELD @[@"id", @"voteQuesId", @"title"]

#define FSC_SNS_MSG_FIELD @[@"id", @"sinaId", @"source", @"msgType", @"msg", @"resPath", @"praiseCount", @"commentCount", @"dataStatus", @"createdDate", @"createdBy", @"timestamp"]
#define FSC_SNS_PRAISE_FIELD @[@"id", @"msgId", @"userId", @"dataStatus", @"timestamp", @"createdDate"]
#define FSC_SNS_COMMENT_FIELD @[@"id", @"msgId", @"fromUser", @"toUser", @"comment", @"dataStatus", @"timestamp", @"createdDate"]

#define FSC_QUES_FIELD @[@"id", @"schoolId", @"title", @"content", @"dataStatus", @"timestamp", @"modifiedDate", @"createdBy"]
#define FSC_ANSWER_FIELD @[@"id", @"QuesId", @"answer", @"dataStatus", @"timestamp", @"modifiedDate", @"createdBy", @"name", @"portrait"]

#define FSC_MSG_FIELD @[@"id", @"title", @"coverImg", @"summary", @"createdDate"]

#define FSC_TEACH_PLAN_FIELD @[@"id", @"planName"]

#define FSC_DISK_FILE_FIELD @[@"id", @"userId", @"isParent", @"parentId", @"fileId", @"fileName", @"fileType", @"fileSize", @"filePath", @"dataStatus", @"modifiedDate"]


#endif
