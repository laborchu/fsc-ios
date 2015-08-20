// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class ClassStudentPb;
@class ClassStudentPbBuilder;
@class ClassUserListPb;
@class ClassUserListPbBuilder;
@class ClassUserPb;
@class ClassUserPbBuilder;



@interface FscClassUserRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define ClassUserListPb_classUserIds @"classUserIds"
#define ClassUserListPb_classUser @"classUser"
#define ClassUserListPb_classStudent @"classStudent"
#define ClassUserListPb_userModifiedDate @"userModifiedDate"
#define ClassUserListPb_studentModifiedDate @"studentModifiedDate"
@interface ClassUserListPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasUserModifiedDate_:1;
  BOOL hasStudentModifiedDate_:1;
  SInt64 userModifiedDate;
  SInt64 studentModifiedDate;
  NSMutableArray * classUserIdsArray;
  NSMutableArray * classUserArray;
  NSMutableArray * classStudentArray;
}
- (BOOL) hasUserModifiedDate;
- (BOOL) hasStudentModifiedDate;
@property (readonly, strong) NSArray * classUserIds;
@property (readonly, strong) NSArray * classUser;
@property (readonly, strong) NSArray * classStudent;
@property (readonly) SInt64 userModifiedDate;
@property (readonly) SInt64 studentModifiedDate;
- (NSString*)classUserIdsAtIndex:(NSUInteger)index;
- (ClassUserPb*)classUserAtIndex:(NSUInteger)index;
- (ClassStudentPb*)classStudentAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ClassUserListPbBuilder*) builder;
+ (ClassUserListPbBuilder*) builder;
+ (ClassUserListPbBuilder*) builderWithPrototype:(ClassUserListPb*) prototype;
- (ClassUserListPbBuilder*) toBuilder;

+ (ClassUserListPb*) parseFromData:(NSData*) data;
+ (ClassUserListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ClassUserListPb*) parseFromInputStream:(NSInputStream*) input;
+ (ClassUserListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ClassUserListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ClassUserListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ClassUserListPbBuilder : PBGeneratedMessageBuilder {
@private
  ClassUserListPb* resultClassUserListPb;
}

- (ClassUserListPb*) defaultInstance;

- (ClassUserListPbBuilder*) clear;
- (ClassUserListPbBuilder*) clone;

- (ClassUserListPb*) build;
- (ClassUserListPb*) buildPartial;

- (ClassUserListPbBuilder*) mergeFrom:(ClassUserListPb*) other;
- (ClassUserListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ClassUserListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)classUserIds;
- (NSString*)classUserIdsAtIndex:(NSUInteger)index;
- (ClassUserListPbBuilder *)addClassUserIds:(NSString*)value;
- (ClassUserListPbBuilder *)setClassUserIdsArray:(NSArray *)array;
- (ClassUserListPbBuilder *)clearClassUserIds;

- (NSMutableArray *)classUser;
- (ClassUserPb*)classUserAtIndex:(NSUInteger)index;
- (ClassUserListPbBuilder *)addClassUser:(ClassUserPb*)value;
- (ClassUserListPbBuilder *)setClassUserArray:(NSArray *)array;
- (ClassUserListPbBuilder *)clearClassUser;

- (NSMutableArray *)classStudent;
- (ClassStudentPb*)classStudentAtIndex:(NSUInteger)index;
- (ClassUserListPbBuilder *)addClassStudent:(ClassStudentPb*)value;
- (ClassUserListPbBuilder *)setClassStudentArray:(NSArray *)array;
- (ClassUserListPbBuilder *)clearClassStudent;

- (BOOL) hasUserModifiedDate;
- (SInt64) userModifiedDate;
- (ClassUserListPbBuilder*) setUserModifiedDate:(SInt64) value;
- (ClassUserListPbBuilder*) clearUserModifiedDate;

- (BOOL) hasStudentModifiedDate;
- (SInt64) studentModifiedDate;
- (ClassUserListPbBuilder*) setStudentModifiedDate:(SInt64) value;
- (ClassUserListPbBuilder*) clearStudentModifiedDate;
@end

#define ClassUserPb_id @"id"
#define ClassUserPb_classId @"classId"
#define ClassUserPb_uuid @"uuid"
#define ClassUserPb_username @"username"
#define ClassUserPb_name @"name"
#define ClassUserPb_portrait @"portrait"
#define ClassUserPb_userType @"userType"
#define ClassUserPb_gender @"gender"
#define ClassUserPb_schoolName @"schoolName"
#define ClassUserPb_userStatus @"userStatus"
#define ClassUserPb_modifiedDate @"modifiedDate"
#define ClassUserPb_studentName @"studentName"
@interface ClassUserPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasClassId_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasUserType_:1;
  BOOL hasGender_:1;
  BOOL hasUserStatus_:1;
  BOOL hasUuid_:1;
  BOOL hasUsername_:1;
  BOOL hasName_:1;
  BOOL hasPortrait_:1;
  BOOL hasSchoolName_:1;
  BOOL hasStudentName_:1;
  SInt64 id;
  SInt64 classId;
  SInt64 modifiedDate;
  SInt32 userType;
  SInt32 gender;
  SInt32 userStatus;
  NSString* uuid;
  NSString* username;
  NSString* name;
  NSString* portrait;
  NSString* schoolName;
  NSString* studentName;
}
- (BOOL) hasId;
- (BOOL) hasClassId;
- (BOOL) hasUuid;
- (BOOL) hasUsername;
- (BOOL) hasName;
- (BOOL) hasPortrait;
- (BOOL) hasUserType;
- (BOOL) hasGender;
- (BOOL) hasSchoolName;
- (BOOL) hasUserStatus;
- (BOOL) hasModifiedDate;
- (BOOL) hasStudentName;
@property (readonly) SInt64 id;
@property (readonly) SInt64 classId;
@property (readonly, strong) NSString* uuid;
@property (readonly, strong) NSString* username;
@property (readonly, strong) NSString* name;
@property (readonly, strong) NSString* portrait;
@property (readonly) SInt32 userType;
@property (readonly) SInt32 gender;
@property (readonly, strong) NSString* schoolName;
@property (readonly) SInt32 userStatus;
@property (readonly) SInt64 modifiedDate;
@property (readonly, strong) NSString* studentName;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ClassUserPbBuilder*) builder;
+ (ClassUserPbBuilder*) builder;
+ (ClassUserPbBuilder*) builderWithPrototype:(ClassUserPb*) prototype;
- (ClassUserPbBuilder*) toBuilder;

+ (ClassUserPb*) parseFromData:(NSData*) data;
+ (ClassUserPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ClassUserPb*) parseFromInputStream:(NSInputStream*) input;
+ (ClassUserPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ClassUserPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ClassUserPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ClassUserPbBuilder : PBGeneratedMessageBuilder {
@private
  ClassUserPb* resultClassUserPb;
}

- (ClassUserPb*) defaultInstance;

- (ClassUserPbBuilder*) clear;
- (ClassUserPbBuilder*) clone;

- (ClassUserPb*) build;
- (ClassUserPb*) buildPartial;

- (ClassUserPbBuilder*) mergeFrom:(ClassUserPb*) other;
- (ClassUserPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ClassUserPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (ClassUserPbBuilder*) setId:(SInt64) value;
- (ClassUserPbBuilder*) clearId;

- (BOOL) hasClassId;
- (SInt64) classId;
- (ClassUserPbBuilder*) setClassId:(SInt64) value;
- (ClassUserPbBuilder*) clearClassId;

- (BOOL) hasUuid;
- (NSString*) uuid;
- (ClassUserPbBuilder*) setUuid:(NSString*) value;
- (ClassUserPbBuilder*) clearUuid;

- (BOOL) hasUsername;
- (NSString*) username;
- (ClassUserPbBuilder*) setUsername:(NSString*) value;
- (ClassUserPbBuilder*) clearUsername;

- (BOOL) hasName;
- (NSString*) name;
- (ClassUserPbBuilder*) setName:(NSString*) value;
- (ClassUserPbBuilder*) clearName;

- (BOOL) hasPortrait;
- (NSString*) portrait;
- (ClassUserPbBuilder*) setPortrait:(NSString*) value;
- (ClassUserPbBuilder*) clearPortrait;

- (BOOL) hasUserType;
- (SInt32) userType;
- (ClassUserPbBuilder*) setUserType:(SInt32) value;
- (ClassUserPbBuilder*) clearUserType;

- (BOOL) hasGender;
- (SInt32) gender;
- (ClassUserPbBuilder*) setGender:(SInt32) value;
- (ClassUserPbBuilder*) clearGender;

- (BOOL) hasSchoolName;
- (NSString*) schoolName;
- (ClassUserPbBuilder*) setSchoolName:(NSString*) value;
- (ClassUserPbBuilder*) clearSchoolName;

- (BOOL) hasUserStatus;
- (SInt32) userStatus;
- (ClassUserPbBuilder*) setUserStatus:(SInt32) value;
- (ClassUserPbBuilder*) clearUserStatus;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (ClassUserPbBuilder*) setModifiedDate:(SInt64) value;
- (ClassUserPbBuilder*) clearModifiedDate;

- (BOOL) hasStudentName;
- (NSString*) studentName;
- (ClassUserPbBuilder*) setStudentName:(NSString*) value;
- (ClassUserPbBuilder*) clearStudentName;
@end

#define ClassStudentPb_id @"id"
#define ClassStudentPb_name @"name"
#define ClassStudentPb_classId @"classId"
#define ClassStudentPb_gradeId @"gradeId"
#define ClassStudentPb_portrait @"portrait"
#define ClassStudentPb_userType @"userType"
#define ClassStudentPb_gender @"gender"
#define ClassStudentPb_schoolName @"schoolName"
#define ClassStudentPb_dataStatus @"dataStatus"
#define ClassStudentPb_modifiedDate @"modifiedDate"
@interface ClassStudentPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasClassId_:1;
  BOOL hasGradeId_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasUserType_:1;
  BOOL hasGender_:1;
  BOOL hasDataStatus_:1;
  BOOL hasName_:1;
  BOOL hasPortrait_:1;
  BOOL hasSchoolName_:1;
  SInt64 id;
  SInt64 classId;
  SInt64 gradeId;
  SInt64 modifiedDate;
  SInt32 userType;
  SInt32 gender;
  SInt32 dataStatus;
  NSString* name;
  NSString* portrait;
  NSString* schoolName;
}
- (BOOL) hasId;
- (BOOL) hasName;
- (BOOL) hasClassId;
- (BOOL) hasGradeId;
- (BOOL) hasPortrait;
- (BOOL) hasUserType;
- (BOOL) hasGender;
- (BOOL) hasSchoolName;
- (BOOL) hasDataStatus;
- (BOOL) hasModifiedDate;
@property (readonly) SInt64 id;
@property (readonly, strong) NSString* name;
@property (readonly) SInt64 classId;
@property (readonly) SInt64 gradeId;
@property (readonly, strong) NSString* portrait;
@property (readonly) SInt32 userType;
@property (readonly) SInt32 gender;
@property (readonly, strong) NSString* schoolName;
@property (readonly) SInt32 dataStatus;
@property (readonly) SInt64 modifiedDate;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ClassStudentPbBuilder*) builder;
+ (ClassStudentPbBuilder*) builder;
+ (ClassStudentPbBuilder*) builderWithPrototype:(ClassStudentPb*) prototype;
- (ClassStudentPbBuilder*) toBuilder;

+ (ClassStudentPb*) parseFromData:(NSData*) data;
+ (ClassStudentPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ClassStudentPb*) parseFromInputStream:(NSInputStream*) input;
+ (ClassStudentPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ClassStudentPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ClassStudentPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ClassStudentPbBuilder : PBGeneratedMessageBuilder {
@private
  ClassStudentPb* resultClassStudentPb;
}

- (ClassStudentPb*) defaultInstance;

- (ClassStudentPbBuilder*) clear;
- (ClassStudentPbBuilder*) clone;

- (ClassStudentPb*) build;
- (ClassStudentPb*) buildPartial;

- (ClassStudentPbBuilder*) mergeFrom:(ClassStudentPb*) other;
- (ClassStudentPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ClassStudentPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (ClassStudentPbBuilder*) setId:(SInt64) value;
- (ClassStudentPbBuilder*) clearId;

- (BOOL) hasName;
- (NSString*) name;
- (ClassStudentPbBuilder*) setName:(NSString*) value;
- (ClassStudentPbBuilder*) clearName;

- (BOOL) hasClassId;
- (SInt64) classId;
- (ClassStudentPbBuilder*) setClassId:(SInt64) value;
- (ClassStudentPbBuilder*) clearClassId;

- (BOOL) hasGradeId;
- (SInt64) gradeId;
- (ClassStudentPbBuilder*) setGradeId:(SInt64) value;
- (ClassStudentPbBuilder*) clearGradeId;

- (BOOL) hasPortrait;
- (NSString*) portrait;
- (ClassStudentPbBuilder*) setPortrait:(NSString*) value;
- (ClassStudentPbBuilder*) clearPortrait;

- (BOOL) hasUserType;
- (SInt32) userType;
- (ClassStudentPbBuilder*) setUserType:(SInt32) value;
- (ClassStudentPbBuilder*) clearUserType;

- (BOOL) hasGender;
- (SInt32) gender;
- (ClassStudentPbBuilder*) setGender:(SInt32) value;
- (ClassStudentPbBuilder*) clearGender;

- (BOOL) hasSchoolName;
- (NSString*) schoolName;
- (ClassStudentPbBuilder*) setSchoolName:(NSString*) value;
- (ClassStudentPbBuilder*) clearSchoolName;

- (BOOL) hasDataStatus;
- (SInt32) dataStatus;
- (ClassStudentPbBuilder*) setDataStatus:(SInt32) value;
- (ClassStudentPbBuilder*) clearDataStatus;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (ClassStudentPbBuilder*) setModifiedDate:(SInt64) value;
- (ClassStudentPbBuilder*) clearModifiedDate;
@end


// @@protoc_insertion_point(global_scope)