//
// Created by laborchu on 15/8/24.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "RsFscSessionListCmd.h"
#import "CmdSign.pb.h"
#import "LcFscSessionListCmd.h"
#import "Scheduler.h"
#import "FSCSession.h"
#import "FscSession.pb.h"
#import "CmdCode.h"
#import "FscSessionList.pb.h"
#import "PbTransfer.h"
#import "PbFieldDefine.h"
#import "FSCUser.h"
#import "LcFscChatUserRecorderListCmd.h"
#import "FSCUserRecorder.h"
#import "FSCUserSession.h"
#import "FscConstants.h"
#import "LcFscChatGroupRecorderListCmd.h"
#import "FSCGroupSession.h"
#import "FSCGroupRecorder.h"
#import "LcFscChatGroupUserListCmd.h"
#import "FSCGroupUser.h"
#import "FSCLinkman.h"
#import "LcUtils.h"
#import "FSCPublicRecorder.h"
#import "LcFscChatPublicRecorderListCmd.h"
#import "FSCPublicSession.h"
#import "FSCClassRecorder.h"
#import "FSCClassSession.h"
#import "LcFscChatClassRecorderListCmd.h"
#import "LcFscChatTrgUserListCmd.h"
#import "FSCTrgSession.h"
#import "LcFscChatTrgRecorderListCmd.h"
#import "FSCTrgRecorder.h"


@implementation RsFscSessionListCmd {

}
- (void)req {
    ALcCmd *cmd = [[[LcFscSessionListCmd alloc] init] addDescSortWithKey:@"timestamp"];
    [cmd setFetchLimit:1];
    NSArray *fscSessionArray = [Scheduler exeLc:cmd];
    SInt64 timestamp = 0;
    if (fscSessionArray.count > 0) {
        FSCSession *fscSession = fscSessionArray[0];
        timestamp = [fscSession.timestamp longLongValue];
    }
    FscSessionPb *fscSessionPb = [[[FscSessionPb builder] setTimestamp:timestamp] build];
    [super send:FSC_SESSION_LIST data:fscSessionPb];
}

- (void)splitWithDic:(NSMutableDictionary *)dic sessionPbArray:(NSArray *)array scope:(NSString *)scope {
    for (id sessionPb in array) {
        id id = [sessionPb valueForKey:@"id"];
        NSString *key = [NSString stringWithFormat:@"%@-%d", scope, [id intValue]];
        dic[key] = sessionPb;
    }
}

- (void)splitWithDic:(NSMutableDictionary *)dic recorderPbArray:(NSArray *)array scope:(NSString *)scope {
    for (id recorderPb in array) {
        id sessionId = [recorderPb valueForKey:@"sessionId"];
        NSString *key = [NSString stringWithFormat:@"%@-%d", scope, [sessionId intValue]];
        NSMutableArray *recorderArray;
        if (dic[key]) {
            recorderArray = dic[key];
        } else {
            recorderArray = [NSMutableArray array];
            dic[key] = array;
        }
        [recorderArray addObject:recorderPb];
    }
}

- (void)splitWithDic:(NSMutableDictionary *)dic userPbArray:(NSArray *)array scope:(NSString *)scope {
    for (id userPb in array) {
        id sessionId = [userPb valueForKey:@"sessionId"];
        NSString *key = [NSString stringWithFormat:@"%@-%d", scope, [sessionId intValue]];
        NSMutableArray *userArray;
        if (dic[key]) {
            userArray = dic[key];
        } else {
            userArray = [NSMutableArray array];
            dic[key] = array;
        }
        [userArray addObject:userPb];
    }
}

- (void)resp:(CmdSignPb *)sign {
    FSCUser *fscUser = [super getFscUser];

    FscSessionPbList *sessionList = [FscSessionPbList parseFromData:sign.source];

    NSMutableDictionary *sessionDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *recorderDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *userDic = [NSMutableDictionary dictionary];

    /******开始分组单聊会话和记录****/
    [self splitWithDic:sessionDic sessionPbArray:sessionList.userSessionPb scope:@"user"];
    [self splitWithDic:recorderDic recorderPbArray:sessionList.userRecorderPb scope:@"user"];

    /******开始分组群聊会话，用户和记录****/
    [self splitWithDic:sessionDic sessionPbArray:sessionList.groupSessionPb scope:@"group"];
    [self splitWithDic:recorderDic recorderPbArray:sessionList.groupRecorderPb scope:@"group"];
    [self splitWithDic:userDic userPbArray:sessionList.groupUserPb scope:@"group"];

    /******开始分组公众会话和记录****/
    [self splitWithDic:sessionDic sessionPbArray:sessionList.publicSessionPb scope:@"public"];
    [self splitWithDic:recorderDic recorderPbArray:sessionList.publicRecorderPb scope:@"public"];

    /******开始分组班级会话和记录****/
    [self splitWithDic:sessionDic sessionPbArray:sessionList.classSessionPb scope:@"class"];
    [self splitWithDic:recorderDic recorderPbArray:sessionList.classRecorderPb scope:@"class"];

    /******开始分组教研会话，用户和记录****/
    [self splitWithDic:sessionDic sessionPbArray:sessionList.trgSessionPb scope:@"trg"];
    [self splitWithDic:recorderDic recorderPbArray:sessionList.trgRecorderPb scope:@"trg"];
    [self splitWithDic:userDic userPbArray:sessionList.trgUserPb scope:@"trg"];

    for (FscSessionPb *sessionPb in sessionList.messagePb) {
        ALcCmd *cmd = [[[LcFscSessionListCmd alloc] init]
                addPredicate:@"id==%lld" argumentArray:@[@(sessionPb.id)]];
        NSArray *dbSessionArray = [Scheduler exeLc:cmd];
        FSCSession *fscSession;
        if (dbSessionArray.count > 0) {
            fscSession = dbSessionArray[0];
            [fscSession setLastId:@(sessionPb.lastId)];
            [fscSession setReadId:@(sessionPb.readId)];
            [fscSession setModifiedDate:@(sessionPb.modifiedDate)];
            [fscSession setTimestamp:@(sessionPb.timestamp)];
            [fscSession setDataStatus:@(sessionPb.dataStatus)];
        } else {
            fscSession = [PbTransfer pb:sessionPb entityName:@"FSCSession" fields:FSC_SESSION_FIELDS];
            [fscSession setUnreadCount:@0];
            [fscUser addSessionsObject:fscSession];
        }
        if (sessionPb.type == SESSION_TYPE_USER_CHAT) {
            NSString *userKey = [NSString stringWithFormat:@"user-%d", [@(sessionPb.sessionId) intValue]];
            USessionPb *uSessionPb = sessionDic[userKey];
            NSMutableArray *uRecordersPb = recorderDic[userKey];
            [self exeUSession:uSessionPb uRecorders:uRecordersPb fscSession:fscSession];
        } else if (sessionPb.type == SESSION_TYPE_GROUP_CHAT) {
            NSString *userKey = [NSString stringWithFormat:@"group-%d", [@(sessionPb.sessionId) intValue]];
            GSessionPb *gSessionPb = sessionDic[userKey];
            NSMutableArray *gRecordersPb = recorderDic[userKey];
            NSMutableArray *gusersPb = userDic[userKey];
            [self exeGSession:gSessionPb gRecorders:gRecordersPb gUsers:gusersPb fscSession:fscSession];
        } else if (sessionPb.type == SESSION_TYPE_PUBLIC_CHAT) {
            NSString *userKey = [NSString stringWithFormat:@"pubilc-%d", [@(sessionPb.sessionId) intValue]];
            PSessionPb *pSessionPb = sessionDic[userKey];
            NSMutableArray *pRecordersPb = recorderDic[userKey];
            [self exePSession:pSessionPb pRecorders:pRecordersPb fscSession:fscSession];
        } else if (sessionPb.type == SESSION_TYPE_CLASS_CHAT) {
            NSString *userKey = [NSString stringWithFormat:@"class-%d", [@(sessionPb.sessionId) intValue]];
            CSessionPb *cSessionPb = sessionDic[userKey];
            NSMutableArray *cRecordersPb = recorderDic[userKey];
            [self exeCession:cSessionPb cRecorders:cRecordersPb fscSession:fscSession];
        } else if (sessionPb.type == SESSION_TYPE_TRG_CHAT) {
            NSString *userKey = [NSString stringWithFormat:@"trg-%d", [@(sessionPb.sessionId) intValue]];
            TSessionPb *tSessionPb = sessionDic[userKey];
            NSMutableArray *tRecordersPb = recorderDic[userKey];
            NSMutableArray *tusersPb = userDic[userKey];
            [self exeTSession:tSessionPb tRecorders:tRecordersPb tUsers:tusersPb fscSession:fscSession];
        }
    }
    [super savaData];
}

// 处理单聊
- (void)exeUSession:(USessionPb *)uSessionPb uRecorders:(NSMutableArray *)uRecorders fscSession:(FSCSession *)fscSession {
    if (fscSession.usession) {
        [PbTransfer pb:uSessionPb vo:fscSession.usession fields:CHAT_USER_SESSION_FIELDS];
    } else {
        fscSession.usession = [PbTransfer pb:uSessionPb entityName:@"FSCUserSession" fields:CHAT_USER_SESSION_FIELDS];
    }
    int unreadCount = 0;
    FSCUserRecorder *lastRecorder;
    for (URecorderPb *uRecorderPb in uRecorders) {
        ALcCmd *cmd = [[[LcFscChatUserRecorderListCmd alloc] initWithFscUSession:fscSession.usession]
                addPredicate:@"id==%lld" argumentArray:@[@(uRecorderPb.id)]];
        NSArray *recorderArray = [Scheduler exeLc:cmd];
        FSCUserRecorder *recorder;
        if (recorderArray.count > 0) {
            recorder = recorderArray[0];
            [PbTransfer pb:uRecorderPb vo:recorder fields:CHAT_USER_RECORDER_FIELDS];
            recorder.status = @(1);
        } else {
            recorder = [PbTransfer pb:uRecorderPb entityName:@"FSCUserRecorder" fields:CHAT_USER_RECORDER_FIELDS];
            recorder.status = @(1);
            [fscSession.usession addRecordersObject:recorder];
        }
        if (uRecorderPb.id > (SInt64) fscSession.readId) {
            unreadCount++;
        }
        if (lastRecorder) {
            if (recorder.id > lastRecorder.id) {
                lastRecorder = recorder;
            }
        } else {
            lastRecorder = recorder;
        }
    }
    fscSession.unreadCount = @([fscSession.unreadCount intValue] + unreadCount);
    if (lastRecorder) {
        fscSession.lastMsg = [self getLastMsg:lastRecorder.type msg:lastRecorder.message];
    }
}

// 处理群组
- (void)exeGSession:(GSessionPb *)gSessionPb gRecorders:(NSMutableArray *)gRecorders gUsers:(NSMutableArray *)gUsers fscSession:(FSCSession *)fscSession {
    if (fscSession.usession) {
        [PbTransfer pb:gSessionPb vo:fscSession.gsession fields:CHAT_GROUP_SESSION_FIELDS];
    } else {
        fscSession.usession = [PbTransfer pb:gSessionPb entityName:@"FSCGroupSession" fields:CHAT_GROUP_SESSION_FIELDS];
    }

    /*******处理用户******/
    NSMutableDictionary *inviterDic = [NSMutableDictionary dictionary];
    for (GUserPb *gUserPb in gUsers) {
        ALcCmd *cmd = [[[LcFscChatGroupUserListCmd alloc] initWithFscGSession:fscSession.gsession]
                addPredicate:@"userId==%lld" argumentArray:@[@(gUserPb.userId)]];
        NSArray *recorderArray = [Scheduler exeLc:cmd];
        FSCGroupUser *groupUser;
        if (recorderArray.count > 0) {
            groupUser = recorderArray[0];
            [PbTransfer pb:gUserPb vo:groupUser fields:CHAT_GROUP_USER_FIELDS];
        } else {
            groupUser = [PbTransfer pb:gUserPb entityName:@"FSCGroupUser" fields:CHAT_GROUP_USER_FIELDS];
            [fscSession.gsession addUsersObject:groupUser];
        }
        if (inviterDic[groupUser.inviterId]) {
            NSString *addUserTip = inviterDic[groupUser.inviterId];

            FSCLinkman *fscLinkman = [LcUtils getFscLinkman:groupUser.userId];
            [addUserTip stringByAppendingFormat:@"%@、", fscLinkman.name];

        } else {

        }
    }

    /*******处理记录******/
    int unreadCount = 0;
    FSCGroupRecorder *lastRecorder;
    for (GRecorderPb *gRecorderPb in gRecorders) {
        ALcCmd *cmd = [[[LcFscChatGroupRecorderListCmd alloc] initWithFscGSession:fscSession.gsession]
                addPredicate:@"id==%lld" argumentArray:@[@(gRecorderPb.id)]];
        NSArray *recorderArray = [Scheduler exeLc:cmd];
        FSCGroupRecorder *recorder;
        if (recorderArray.count > 0) {
            recorder = recorderArray[0];
            [PbTransfer pb:gRecorderPb vo:recorder fields:CHAT_GROUP_RECORDER_FIELDS];
            recorder.status = @(1);
        } else {
            recorder = [PbTransfer pb:gRecorderPb entityName:@"FSCGroupRecorder" fields:CHAT_GROUP_RECORDER_FIELDS];
            recorder.status = @(1);
            [fscSession.gsession addRecordersObject:recorder];
        }
        if (gRecorderPb.id > (SInt64) fscSession.readId) {
            unreadCount++;
        }
        if (lastRecorder) {
            if (recorder.id > lastRecorder.id) {
                lastRecorder = recorder;
            }
        } else {
            lastRecorder = recorder;
        }
    }
    fscSession.unreadCount = @([fscSession.unreadCount intValue] + unreadCount);
    if (lastRecorder) {
        fscSession.lastMsg = [self getLastMsg:lastRecorder.type msg:lastRecorder.message];
    }

}

// 处理公众
- (void)exePSession:(PSessionPb *)pSessionPb pRecorders:(NSMutableArray *)pRecorders fscSession:(FSCSession *)fscSession {
    if (fscSession.psession) {
        [PbTransfer pb:pSessionPb vo:fscSession.psession fields:CHAT_PUBLIC_SESSION_FIELDS];
    } else {
        fscSession.psession = [PbTransfer pb:pSessionPb entityName:@"FSCPublicSession" fields:CHAT_PUBLIC_SESSION_FIELDS];
    }

    int unreadCount = 0;
    FSCPublicRecorder *lastRecorder;
    for (PRecorderPb *pRecorderPb in pRecorders) {
        ALcCmd *cmd = [[[LcFscChatPublicRecorderListCmd alloc] initWithFscPSession:fscSession.psession]
                addPredicate:@"id==%lld" argumentArray:@[@(pRecorderPb.id)]];
        NSArray *recorderArray = [Scheduler exeLc:cmd];
        FSCPublicRecorder *recorder;
        if (recorderArray.count > 0) {
            recorder = recorderArray[0];
            [PbTransfer pb:pRecorderPb vo:recorder fields:CHAT_PUBLIC_RECORDER_FIELDS];
            recorder.status = @(1);
        } else {
            recorder = [PbTransfer pb:pRecorderPb entityName:@"FSCPublicRecorder" fields:CHAT_PUBLIC_RECORDER_FIELDS];
            recorder.status = @(1);
            [fscSession.psession addRecordersObject:recorder];
        }
        if (pRecorderPb.id > (SInt64) fscSession.readId) {
            unreadCount++;
        }
        if (lastRecorder) {
            if (recorder.id > lastRecorder.id) {
                lastRecorder = recorder;
            }
        } else {
            lastRecorder = recorder;
        }
    }
    fscSession.unreadCount = @([fscSession.unreadCount intValue] + unreadCount);
    if (lastRecorder) {
        fscSession.lastMsg = [self getLastMsg:lastRecorder.type msg:lastRecorder.message];
    }
}

// 处理班级会话
- (void)exeCession:(CSessionPb *)cSessionPb cRecorders:(NSMutableArray *)cRecorders fscSession:(FSCSession *)fscSession {
    if (fscSession.csession) {
        [PbTransfer pb:cSessionPb vo:fscSession.csession fields:CHAT_CLASS_SESSION_FIELDS];
    } else {
        fscSession.csession = [PbTransfer pb:cSessionPb entityName:@"FSCClassSession" fields:CHAT_CLASS_SESSION_FIELDS];
    }

    int unreadCount = 0;
    FSCClassRecorder *lastRecorder;
    for (CRecorderPb *cRecorderPb in cRecorders) {
        ALcCmd *cmd = [[[LcFscChatClassRecorderListCmd alloc] initWithFscCSession:fscSession.csession]
                addPredicate:@"id==%lld" argumentArray:@[@(cRecorderPb.id)]];
        NSArray *recorderArray = [Scheduler exeLc:cmd];
        FSCClassRecorder *recorder;
        if (recorderArray.count > 0) {
            recorder = recorderArray[0];
            [PbTransfer pb:cRecorderPb vo:recorder fields:CHAT_CLASS_RECORDER_FIELDS];
            recorder.status = @(1);
        } else {
            recorder = [PbTransfer pb:cRecorderPb entityName:@"FSCClassRecorder" fields:CHAT_CLASS_RECORDER_FIELDS];
            recorder.status = @(1);
            [fscSession.csession addRecordersObject:recorder];
        }
        if (cRecorderPb.id > (SInt64) fscSession.readId) {
            unreadCount++;
        }
        if (lastRecorder) {
            if (recorder.id > lastRecorder.id) {
                lastRecorder = recorder;
            }
        } else {
            lastRecorder = recorder;
        }
    }
    fscSession.unreadCount = @([fscSession.unreadCount intValue] + unreadCount);
    if (lastRecorder) {
        fscSession.lastMsg = [self getLastMsg:lastRecorder.type msg:lastRecorder.message];
    }
}

- (void)exeTSession:(TSessionPb *)tSessionPb tRecorders:(NSMutableArray *)tRecorders tUsers:(NSMutableArray *)tUsers fscSession:(FSCSession *)fscSession {
    if (fscSession.usession) {
        [PbTransfer pb:tSessionPb vo:fscSession.tsession fields:CHAT_TRG_SESSION_FIELDS];
    } else {
        fscSession.usession = [PbTransfer pb:tSessionPb entityName:@"FSCTrgSession" fields:CHAT_TRG_SESSION_FIELDS];
    }

    /*******处理用户******/
    for (TUserPb *tUserPb in tUsers) {
        ALcCmd *cmd = [[[LcFscChatTrgUserListCmd alloc] initWithFscTSession:fscSession.tsession]
                addPredicate:@"userId==%lld" argumentArray:@[@(tUserPb.userId)]];
        NSArray *userArray = [Scheduler exeLc:cmd];
        FSCTrgUser *trgUser;
        if (userArray.count > 0) {
            trgUser = userArray[0];
            [PbTransfer pb:tUserPb vo:trgUser fields:CHAT_TRG_USER_FIELDS];
        } else {
            trgUser = [PbTransfer pb:tUserPb entityName:@"FSCTrgUser" fields:CHAT_TRG_USER_FIELDS];
            [fscSession.tsession addUsersObject:trgUser];
        }
    }

    /*******处理记录******/
    int unreadCount = 0;
    FSCTrgRecorder *lastRecorder;
    for (TRecorderPb *tRecorderPb in tRecorders) {
        ALcCmd *cmd = [[[LcFscChatTrgRecorderListCmd alloc] initWithFscTSession:fscSession.tsession]
                addPredicate:@"id==%lld" argumentArray:@[@(tRecorderPb.id)]];
        NSArray *recorderArray = [Scheduler exeLc:cmd];
        FSCTrgRecorder *recorder;
        if (recorderArray.count > 0) {
            recorder = recorderArray[0];
            [PbTransfer pb:tRecorderPb vo:recorder fields:CHAT_TRG_RECORDER_FIELDS];
            recorder.status = @(1);
        } else {
            recorder = [PbTransfer pb:tRecorderPb entityName:@"FSCTrgRecorder" fields:CHAT_TRG_RECORDER_FIELDS];
            recorder.status = @(1);
            [fscSession.tsession addRecordersObject:recorder];
        }
        if (tRecorderPb.id > (SInt64) fscSession.readId) {
            unreadCount++;
        }
        if (lastRecorder) {
            if (recorder.id > lastRecorder.id) {
                lastRecorder = recorder;
            }
        } else {
            lastRecorder = recorder;
        }
    }
    fscSession.unreadCount = @([fscSession.unreadCount intValue] + unreadCount);
    if (lastRecorder) {
        fscSession.lastMsg = [self getLastMsg:lastRecorder.type msg:lastRecorder.message];
    }

}

- (NSString *)getLastMsg:(NSNumber *)type msg:(NSString *)msg {
    switch ([type intValue]) {
        case RECORDER_TYPE_MSG:
            return msg;
        case RECORDER_TYPE_VOICE:
            return @"[语音]";
        case RECORDER_TYPE_IMG:
            return @"[图片]";
        case RECORDER_TYPE_P_MSG:
            return @"[三通两平台消息]";
        case RECORDER_TYPE_DISK_FILE:
            return @"[文件]";
        case RECORDER_TYPE_MAP:
            return @"[地理位置]";
        default:
            return @"";
    }
}

@end
