// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

#import "FscSession.pb.h"
// @@protoc_insertion_point(imports)

@class FscSessionPb;
@class FscSessionPbBuilder;
@class TRecorderListPb;
@class TRecorderListPbBuilder;
@class TRecorderPb;
@class TRecorderPbBuilder;
@class TSessionPb;
@class TSessionPbBuilder;
@class TUserPb;
@class TUserPbBuilder;
@class URecorderListPb;
@class URecorderListPbBuilder;
@class URecorderPb;
@class URecorderPbBuilder;
@class USessionPb;
@class USessionPbBuilder;



@interface FscChatTrgRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define TRecorderListPb_recorderPb @"recorderPb"
@interface TRecorderListPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * recorderPbArray;
}
@property (readonly, strong) NSArray * recorderPb;
- (TRecorderPb*)recorderPbAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (TRecorderListPbBuilder*) builder;
+ (TRecorderListPbBuilder*) builder;
+ (TRecorderListPbBuilder*) builderWithPrototype:(TRecorderListPb*) prototype;
- (TRecorderListPbBuilder*) toBuilder;

+ (TRecorderListPb*) parseFromData:(NSData*) data;
+ (TRecorderListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TRecorderListPb*) parseFromInputStream:(NSInputStream*) input;
+ (TRecorderListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TRecorderListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (TRecorderListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface TRecorderListPbBuilder : PBGeneratedMessageBuilder {
@private
  TRecorderListPb* resultTrecorderListPb;
}

- (TRecorderListPb*) defaultInstance;

- (TRecorderListPbBuilder*) clear;
- (TRecorderListPbBuilder*) clone;

- (TRecorderListPb*) build;
- (TRecorderListPb*) buildPartial;

- (TRecorderListPbBuilder*) mergeFrom:(TRecorderListPb*) other;
- (TRecorderListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (TRecorderListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)recorderPb;
- (TRecorderPb*)recorderPbAtIndex:(NSUInteger)index;
- (TRecorderListPbBuilder *)addRecorderPb:(TRecorderPb*)value;
- (TRecorderListPbBuilder *)setRecorderPbArray:(NSArray *)array;
- (TRecorderListPbBuilder *)clearRecorderPb;
@end

#define TSessionPb_id @"id"
#define TSessionPb_schoolId @"schoolId"
#define TSessionPb_uuid @"uuid"
#define TSessionPb_sessionType @"sessionType"
#define TSessionPb_year @"year"
#define TSessionPb_semester @"semester"
#define TSessionPb_gradeId @"gradeId"
#define TSessionPb_subjectId @"subjectId"
#define TSessionPb_name @"name"
#define TSessionPb_dataStatus @"dataStatus"
#define TSessionPb_createdDate @"createdDate"
#define TSessionPb_timestamp @"timestamp"
#define TSessionPb_user @"user"
#define TSessionPb_fscSession @"fscSession"
@interface TSessionPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasSchoolId_:1;
  BOOL hasYear_:1;
  BOOL hasSemester_:1;
  BOOL hasGradeId_:1;
  BOOL hasSubjectId_:1;
  BOOL hasCreatedDate_:1;
  BOOL hasTimestamp_:1;
  BOOL hasSessionType_:1;
  BOOL hasDataStatus_:1;
  BOOL hasUuid_:1;
  BOOL hasName_:1;
  BOOL hasFscSession_:1;
  SInt64 id;
  SInt64 schoolId;
  SInt64 year;
  SInt64 semester;
  SInt64 gradeId;
  SInt64 subjectId;
  SInt64 createdDate;
  SInt64 timestamp;
  SInt32 sessionType;
  SInt32 dataStatus;
  NSString* uuid;
  NSString* name;
  FscSessionPb* fscSession;
  NSMutableArray * userArray;
}
- (BOOL) hasId;
- (BOOL) hasSchoolId;
- (BOOL) hasUuid;
- (BOOL) hasSessionType;
- (BOOL) hasYear;
- (BOOL) hasSemester;
- (BOOL) hasGradeId;
- (BOOL) hasSubjectId;
- (BOOL) hasName;
- (BOOL) hasDataStatus;
- (BOOL) hasCreatedDate;
- (BOOL) hasTimestamp;
- (BOOL) hasFscSession;
@property (readonly) SInt64 id;
@property (readonly) SInt64 schoolId;
@property (readonly, strong) NSString* uuid;
@property (readonly) SInt32 sessionType;
@property (readonly) SInt64 year;
@property (readonly) SInt64 semester;
@property (readonly) SInt64 gradeId;
@property (readonly) SInt64 subjectId;
@property (readonly, strong) NSString* name;
@property (readonly) SInt32 dataStatus;
@property (readonly) SInt64 createdDate;
@property (readonly) SInt64 timestamp;
@property (readonly, strong) NSArray * user;
@property (readonly, strong) FscSessionPb* fscSession;
- (TUserPb*)userAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (TSessionPbBuilder*) builder;
+ (TSessionPbBuilder*) builder;
+ (TSessionPbBuilder*) builderWithPrototype:(TSessionPb*) prototype;
- (TSessionPbBuilder*) toBuilder;

+ (TSessionPb*) parseFromData:(NSData*) data;
+ (TSessionPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TSessionPb*) parseFromInputStream:(NSInputStream*) input;
+ (TSessionPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TSessionPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (TSessionPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface TSessionPbBuilder : PBGeneratedMessageBuilder {
@private
  TSessionPb* resultTsessionPb;
}

- (TSessionPb*) defaultInstance;

- (TSessionPbBuilder*) clear;
- (TSessionPbBuilder*) clone;

- (TSessionPb*) build;
- (TSessionPb*) buildPartial;

- (TSessionPbBuilder*) mergeFrom:(TSessionPb*) other;
- (TSessionPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (TSessionPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (TSessionPbBuilder*) setId:(SInt64) value;
- (TSessionPbBuilder*) clearId;

- (BOOL) hasSchoolId;
- (SInt64) schoolId;
- (TSessionPbBuilder*) setSchoolId:(SInt64) value;
- (TSessionPbBuilder*) clearSchoolId;

- (BOOL) hasUuid;
- (NSString*) uuid;
- (TSessionPbBuilder*) setUuid:(NSString*) value;
- (TSessionPbBuilder*) clearUuid;

- (BOOL) hasSessionType;
- (SInt32) sessionType;
- (TSessionPbBuilder*) setSessionType:(SInt32) value;
- (TSessionPbBuilder*) clearSessionType;

- (BOOL) hasYear;
- (SInt64) year;
- (TSessionPbBuilder*) setYear:(SInt64) value;
- (TSessionPbBuilder*) clearYear;

- (BOOL) hasSemester;
- (SInt64) semester;
- (TSessionPbBuilder*) setSemester:(SInt64) value;
- (TSessionPbBuilder*) clearSemester;

- (BOOL) hasGradeId;
- (SInt64) gradeId;
- (TSessionPbBuilder*) setGradeId:(SInt64) value;
- (TSessionPbBuilder*) clearGradeId;

- (BOOL) hasSubjectId;
- (SInt64) subjectId;
- (TSessionPbBuilder*) setSubjectId:(SInt64) value;
- (TSessionPbBuilder*) clearSubjectId;

- (BOOL) hasName;
- (NSString*) name;
- (TSessionPbBuilder*) setName:(NSString*) value;
- (TSessionPbBuilder*) clearName;

- (BOOL) hasDataStatus;
- (SInt32) dataStatus;
- (TSessionPbBuilder*) setDataStatus:(SInt32) value;
- (TSessionPbBuilder*) clearDataStatus;

- (BOOL) hasCreatedDate;
- (SInt64) createdDate;
- (TSessionPbBuilder*) setCreatedDate:(SInt64) value;
- (TSessionPbBuilder*) clearCreatedDate;

- (BOOL) hasTimestamp;
- (SInt64) timestamp;
- (TSessionPbBuilder*) setTimestamp:(SInt64) value;
- (TSessionPbBuilder*) clearTimestamp;

- (NSMutableArray *)user;
- (TUserPb*)userAtIndex:(NSUInteger)index;
- (TSessionPbBuilder *)addUser:(TUserPb*)value;
- (TSessionPbBuilder *)setUserArray:(NSArray *)array;
- (TSessionPbBuilder *)clearUser;

- (BOOL) hasFscSession;
- (FscSessionPb*) fscSession;
- (TSessionPbBuilder*) setFscSession:(FscSessionPb*) value;
- (TSessionPbBuilder*) setFscSessionBuilder:(FscSessionPbBuilder*) builderForValue;
- (TSessionPbBuilder*) mergeFscSession:(FscSessionPb*) value;
- (TSessionPbBuilder*) clearFscSession;
@end

#define TUserPb_sessionId @"sessionId"
#define TUserPb_userId @"userId"
#define TUserPb_status @"status"
#define TUserPb_name @"name"
#define TUserPb_portrait @"portrait"
#define TUserPb_createdDate @"createdDate"
#define TUserPb_modifiedDate @"modifiedDate"
#define TUserPb_timestamp @"timestamp"
#define TUserPb_userType @"userType"
#define TUserPb_gender @"gender"
#define TUserPb_schoolName @"schoolName"
@interface TUserPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasSessionId_:1;
  BOOL hasUserId_:1;
  BOOL hasCreatedDate_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasTimestamp_:1;
  BOOL hasStatus_:1;
  BOOL hasUserType_:1;
  BOOL hasGender_:1;
  BOOL hasName_:1;
  BOOL hasPortrait_:1;
  BOOL hasSchoolName_:1;
  SInt64 sessionId;
  SInt64 userId;
  SInt64 createdDate;
  SInt64 modifiedDate;
  SInt64 timestamp;
  SInt32 status;
  SInt32 userType;
  SInt32 gender;
  NSString* name;
  NSString* portrait;
  NSString* schoolName;
}
- (BOOL) hasSessionId;
- (BOOL) hasUserId;
- (BOOL) hasStatus;
- (BOOL) hasName;
- (BOOL) hasPortrait;
- (BOOL) hasCreatedDate;
- (BOOL) hasModifiedDate;
- (BOOL) hasTimestamp;
- (BOOL) hasUserType;
- (BOOL) hasGender;
- (BOOL) hasSchoolName;
@property (readonly) SInt64 sessionId;
@property (readonly) SInt64 userId;
@property (readonly) SInt32 status;
@property (readonly, strong) NSString* name;
@property (readonly, strong) NSString* portrait;
@property (readonly) SInt64 createdDate;
@property (readonly) SInt64 modifiedDate;
@property (readonly) SInt64 timestamp;
@property (readonly) SInt32 userType;
@property (readonly) SInt32 gender;
@property (readonly, strong) NSString* schoolName;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (TUserPbBuilder*) builder;
+ (TUserPbBuilder*) builder;
+ (TUserPbBuilder*) builderWithPrototype:(TUserPb*) prototype;
- (TUserPbBuilder*) toBuilder;

+ (TUserPb*) parseFromData:(NSData*) data;
+ (TUserPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TUserPb*) parseFromInputStream:(NSInputStream*) input;
+ (TUserPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TUserPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (TUserPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface TUserPbBuilder : PBGeneratedMessageBuilder {
@private
  TUserPb* resultTuserPb;
}

- (TUserPb*) defaultInstance;

- (TUserPbBuilder*) clear;
- (TUserPbBuilder*) clone;

- (TUserPb*) build;
- (TUserPb*) buildPartial;

- (TUserPbBuilder*) mergeFrom:(TUserPb*) other;
- (TUserPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (TUserPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasSessionId;
- (SInt64) sessionId;
- (TUserPbBuilder*) setSessionId:(SInt64) value;
- (TUserPbBuilder*) clearSessionId;

- (BOOL) hasUserId;
- (SInt64) userId;
- (TUserPbBuilder*) setUserId:(SInt64) value;
- (TUserPbBuilder*) clearUserId;

- (BOOL) hasStatus;
- (SInt32) status;
- (TUserPbBuilder*) setStatus:(SInt32) value;
- (TUserPbBuilder*) clearStatus;

- (BOOL) hasName;
- (NSString*) name;
- (TUserPbBuilder*) setName:(NSString*) value;
- (TUserPbBuilder*) clearName;

- (BOOL) hasPortrait;
- (NSString*) portrait;
- (TUserPbBuilder*) setPortrait:(NSString*) value;
- (TUserPbBuilder*) clearPortrait;

- (BOOL) hasCreatedDate;
- (SInt64) createdDate;
- (TUserPbBuilder*) setCreatedDate:(SInt64) value;
- (TUserPbBuilder*) clearCreatedDate;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (TUserPbBuilder*) setModifiedDate:(SInt64) value;
- (TUserPbBuilder*) clearModifiedDate;

- (BOOL) hasTimestamp;
- (SInt64) timestamp;
- (TUserPbBuilder*) setTimestamp:(SInt64) value;
- (TUserPbBuilder*) clearTimestamp;

- (BOOL) hasUserType;
- (SInt32) userType;
- (TUserPbBuilder*) setUserType:(SInt32) value;
- (TUserPbBuilder*) clearUserType;

- (BOOL) hasGender;
- (SInt32) gender;
- (TUserPbBuilder*) setGender:(SInt32) value;
- (TUserPbBuilder*) clearGender;

- (BOOL) hasSchoolName;
- (NSString*) schoolName;
- (TUserPbBuilder*) setSchoolName:(NSString*) value;
- (TUserPbBuilder*) clearSchoolName;
@end

#define TRecorderPb_id @"id"
#define TRecorderPb_sessionId @"sessionId"
#define TRecorderPb_type @"type"
#define TRecorderPb_message @"message"
#define TRecorderPb_voiceLength @"voiceLength"
#define TRecorderPb_createdBy @"createdBy"
#define TRecorderPb_createdDate @"createdDate"
#define TRecorderPb_timestamp @"timestamp"
#define TRecorderPb_file @"file"
#define TRecorderPb_uuid @"uuid"
@interface TRecorderPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasSessionId_:1;
  BOOL hasCreatedBy_:1;
  BOOL hasCreatedDate_:1;
  BOOL hasTimestamp_:1;
  BOOL hasType_:1;
  BOOL hasVoiceLength_:1;
  BOOL hasMessage_:1;
  BOOL hasUuid_:1;
  BOOL hasFile_:1;
  SInt64 id;
  SInt64 sessionId;
  SInt64 createdBy;
  SInt64 createdDate;
  SInt64 timestamp;
  SInt32 type;
  SInt32 voiceLength;
  NSString* message;
  NSString* uuid;
  NSData* file;
}
- (BOOL) hasId;
- (BOOL) hasSessionId;
- (BOOL) hasType;
- (BOOL) hasMessage;
- (BOOL) hasVoiceLength;
- (BOOL) hasCreatedBy;
- (BOOL) hasCreatedDate;
- (BOOL) hasTimestamp;
- (BOOL) hasFile;
- (BOOL) hasUuid;
@property (readonly) SInt64 id;
@property (readonly) SInt64 sessionId;
@property (readonly) SInt32 type;
@property (readonly, strong) NSString* message;
@property (readonly) SInt32 voiceLength;
@property (readonly) SInt64 createdBy;
@property (readonly) SInt64 createdDate;
@property (readonly) SInt64 timestamp;
@property (readonly, strong) NSData* file;
@property (readonly, strong) NSString* uuid;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (TRecorderPbBuilder*) builder;
+ (TRecorderPbBuilder*) builder;
+ (TRecorderPbBuilder*) builderWithPrototype:(TRecorderPb*) prototype;
- (TRecorderPbBuilder*) toBuilder;

+ (TRecorderPb*) parseFromData:(NSData*) data;
+ (TRecorderPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TRecorderPb*) parseFromInputStream:(NSInputStream*) input;
+ (TRecorderPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (TRecorderPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (TRecorderPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface TRecorderPbBuilder : PBGeneratedMessageBuilder {
@private
  TRecorderPb* resultTrecorderPb;
}

- (TRecorderPb*) defaultInstance;

- (TRecorderPbBuilder*) clear;
- (TRecorderPbBuilder*) clone;

- (TRecorderPb*) build;
- (TRecorderPb*) buildPartial;

- (TRecorderPbBuilder*) mergeFrom:(TRecorderPb*) other;
- (TRecorderPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (TRecorderPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (TRecorderPbBuilder*) setId:(SInt64) value;
- (TRecorderPbBuilder*) clearId;

- (BOOL) hasSessionId;
- (SInt64) sessionId;
- (TRecorderPbBuilder*) setSessionId:(SInt64) value;
- (TRecorderPbBuilder*) clearSessionId;

- (BOOL) hasType;
- (SInt32) type;
- (TRecorderPbBuilder*) setType:(SInt32) value;
- (TRecorderPbBuilder*) clearType;

- (BOOL) hasMessage;
- (NSString*) message;
- (TRecorderPbBuilder*) setMessage:(NSString*) value;
- (TRecorderPbBuilder*) clearMessage;

- (BOOL) hasVoiceLength;
- (SInt32) voiceLength;
- (TRecorderPbBuilder*) setVoiceLength:(SInt32) value;
- (TRecorderPbBuilder*) clearVoiceLength;

- (BOOL) hasCreatedBy;
- (SInt64) createdBy;
- (TRecorderPbBuilder*) setCreatedBy:(SInt64) value;
- (TRecorderPbBuilder*) clearCreatedBy;

- (BOOL) hasCreatedDate;
- (SInt64) createdDate;
- (TRecorderPbBuilder*) setCreatedDate:(SInt64) value;
- (TRecorderPbBuilder*) clearCreatedDate;

- (BOOL) hasTimestamp;
- (SInt64) timestamp;
- (TRecorderPbBuilder*) setTimestamp:(SInt64) value;
- (TRecorderPbBuilder*) clearTimestamp;

- (BOOL) hasFile;
- (NSData*) file;
- (TRecorderPbBuilder*) setFile:(NSData*) value;
- (TRecorderPbBuilder*) clearFile;

- (BOOL) hasUuid;
- (NSString*) uuid;
- (TRecorderPbBuilder*) setUuid:(NSString*) value;
- (TRecorderPbBuilder*) clearUuid;
@end


// @@protoc_insertion_point(global_scope)
