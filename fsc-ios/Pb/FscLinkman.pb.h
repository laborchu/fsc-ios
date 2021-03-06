// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class LinkmanListPb;
@class LinkmanListPbBuilder;
@class LinkmanPb;
@class LinkmanPbBuilder;



@interface FscLinkmanRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define LinkmanListPb_userId @"userId"
#define LinkmanListPb_timestamp @"timestamp"
#define LinkmanListPb_modifiedDate @"modifiedDate"
#define LinkmanListPb_linkman @"linkman"
@interface LinkmanListPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasUserId_:1;
  BOOL hasTimestamp_:1;
  BOOL hasModifiedDate_:1;
  SInt64 userId;
  SInt64 timestamp;
  SInt64 modifiedDate;
  NSMutableArray * linkmanArray;
}
- (BOOL) hasUserId;
- (BOOL) hasTimestamp;
- (BOOL) hasModifiedDate;
@property (readonly) SInt64 userId;
@property (readonly) SInt64 timestamp;
@property (readonly) SInt64 modifiedDate;
@property (readonly, strong) NSArray * linkman;
- (LinkmanPb*)linkmanAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (LinkmanListPbBuilder*) builder;
+ (LinkmanListPbBuilder*) builder;
+ (LinkmanListPbBuilder*) builderWithPrototype:(LinkmanListPb*) prototype;
- (LinkmanListPbBuilder*) toBuilder;

+ (LinkmanListPb*) parseFromData:(NSData*) data;
+ (LinkmanListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (LinkmanListPb*) parseFromInputStream:(NSInputStream*) input;
+ (LinkmanListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (LinkmanListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (LinkmanListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface LinkmanListPbBuilder : PBGeneratedMessageBuilder {
@private
  LinkmanListPb* resultLinkmanListPb;
}

- (LinkmanListPb*) defaultInstance;

- (LinkmanListPbBuilder*) clear;
- (LinkmanListPbBuilder*) clone;

- (LinkmanListPb*) build;
- (LinkmanListPb*) buildPartial;

- (LinkmanListPbBuilder*) mergeFrom:(LinkmanListPb*) other;
- (LinkmanListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (LinkmanListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasUserId;
- (SInt64) userId;
- (LinkmanListPbBuilder*) setUserId:(SInt64) value;
- (LinkmanListPbBuilder*) clearUserId;

- (BOOL) hasTimestamp;
- (SInt64) timestamp;
- (LinkmanListPbBuilder*) setTimestamp:(SInt64) value;
- (LinkmanListPbBuilder*) clearTimestamp;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (LinkmanListPbBuilder*) setModifiedDate:(SInt64) value;
- (LinkmanListPbBuilder*) clearModifiedDate;

- (NSMutableArray *)linkman;
- (LinkmanPb*)linkmanAtIndex:(NSUInteger)index;
- (LinkmanListPbBuilder *)addLinkman:(LinkmanPb*)value;
- (LinkmanListPbBuilder *)setLinkmanArray:(NSArray *)array;
- (LinkmanListPbBuilder *)clearLinkman;
@end

#define LinkmanPb_id @"id"
#define LinkmanPb_uuid @"uuid"
#define LinkmanPb_username @"username"
#define LinkmanPb_name @"name"
#define LinkmanPb_portrait @"portrait"
#define LinkmanPb_userType @"userType"
#define LinkmanPb_gender @"gender"
#define LinkmanPb_email @"email"
#define LinkmanPb_createdDate @"createdDate"
#define LinkmanPb_schoolName @"schoolName"
#define LinkmanPb_mobile @"mobile"
#define LinkmanPb_title @"title"
#define LinkmanPb_subjectName @"subjectName"
#define LinkmanPb_file @"file"
#define LinkmanPb_status @"status"
#define LinkmanPb_modifiedDate @"modifiedDate"
#define LinkmanPb_timestamp @"timestamp"
@interface LinkmanPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasCreatedDate_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasTimestamp_:1;
  BOOL hasUserType_:1;
  BOOL hasGender_:1;
  BOOL hasStatus_:1;
  BOOL hasUuid_:1;
  BOOL hasUsername_:1;
  BOOL hasName_:1;
  BOOL hasPortrait_:1;
  BOOL hasEmail_:1;
  BOOL hasSchoolName_:1;
  BOOL hasMobile_:1;
  BOOL hasTitle_:1;
  BOOL hasSubjectName_:1;
  BOOL hasFile_:1;
  SInt64 id;
  SInt64 createdDate;
  SInt64 modifiedDate;
  SInt64 timestamp;
  SInt32 userType;
  SInt32 gender;
  SInt32 status;
  NSString* uuid;
  NSString* username;
  NSString* name;
  NSString* portrait;
  NSString* email;
  NSString* schoolName;
  NSString* mobile;
  NSString* title;
  NSString* subjectName;
  NSData* file;
}
- (BOOL) hasId;
- (BOOL) hasUuid;
- (BOOL) hasUsername;
- (BOOL) hasName;
- (BOOL) hasPortrait;
- (BOOL) hasUserType;
- (BOOL) hasGender;
- (BOOL) hasEmail;
- (BOOL) hasCreatedDate;
- (BOOL) hasSchoolName;
- (BOOL) hasMobile;
- (BOOL) hasTitle;
- (BOOL) hasSubjectName;
- (BOOL) hasFile;
- (BOOL) hasStatus;
- (BOOL) hasModifiedDate;
- (BOOL) hasTimestamp;
@property (readonly) SInt64 id;
@property (readonly, strong) NSString* uuid;
@property (readonly, strong) NSString* username;
@property (readonly, strong) NSString* name;
@property (readonly, strong) NSString* portrait;
@property (readonly) SInt32 userType;
@property (readonly) SInt32 gender;
@property (readonly, strong) NSString* email;
@property (readonly) SInt64 createdDate;
@property (readonly, strong) NSString* schoolName;
@property (readonly, strong) NSString* mobile;
@property (readonly, strong) NSString* title;
@property (readonly, strong) NSString* subjectName;
@property (readonly, strong) NSData* file;
@property (readonly) SInt32 status;
@property (readonly) SInt64 modifiedDate;
@property (readonly) SInt64 timestamp;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (LinkmanPbBuilder*) builder;
+ (LinkmanPbBuilder*) builder;
+ (LinkmanPbBuilder*) builderWithPrototype:(LinkmanPb*) prototype;
- (LinkmanPbBuilder*) toBuilder;

+ (LinkmanPb*) parseFromData:(NSData*) data;
+ (LinkmanPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (LinkmanPb*) parseFromInputStream:(NSInputStream*) input;
+ (LinkmanPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (LinkmanPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (LinkmanPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface LinkmanPbBuilder : PBGeneratedMessageBuilder {
@private
  LinkmanPb* resultLinkmanPb;
}

- (LinkmanPb*) defaultInstance;

- (LinkmanPbBuilder*) clear;
- (LinkmanPbBuilder*) clone;

- (LinkmanPb*) build;
- (LinkmanPb*) buildPartial;

- (LinkmanPbBuilder*) mergeFrom:(LinkmanPb*) other;
- (LinkmanPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (LinkmanPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (LinkmanPbBuilder*) setId:(SInt64) value;
- (LinkmanPbBuilder*) clearId;

- (BOOL) hasUuid;
- (NSString*) uuid;
- (LinkmanPbBuilder*) setUuid:(NSString*) value;
- (LinkmanPbBuilder*) clearUuid;

- (BOOL) hasUsername;
- (NSString*) username;
- (LinkmanPbBuilder*) setUsername:(NSString*) value;
- (LinkmanPbBuilder*) clearUsername;

- (BOOL) hasName;
- (NSString*) name;
- (LinkmanPbBuilder*) setName:(NSString*) value;
- (LinkmanPbBuilder*) clearName;

- (BOOL) hasPortrait;
- (NSString*) portrait;
- (LinkmanPbBuilder*) setPortrait:(NSString*) value;
- (LinkmanPbBuilder*) clearPortrait;

- (BOOL) hasUserType;
- (SInt32) userType;
- (LinkmanPbBuilder*) setUserType:(SInt32) value;
- (LinkmanPbBuilder*) clearUserType;

- (BOOL) hasGender;
- (SInt32) gender;
- (LinkmanPbBuilder*) setGender:(SInt32) value;
- (LinkmanPbBuilder*) clearGender;

- (BOOL) hasEmail;
- (NSString*) email;
- (LinkmanPbBuilder*) setEmail:(NSString*) value;
- (LinkmanPbBuilder*) clearEmail;

- (BOOL) hasCreatedDate;
- (SInt64) createdDate;
- (LinkmanPbBuilder*) setCreatedDate:(SInt64) value;
- (LinkmanPbBuilder*) clearCreatedDate;

- (BOOL) hasSchoolName;
- (NSString*) schoolName;
- (LinkmanPbBuilder*) setSchoolName:(NSString*) value;
- (LinkmanPbBuilder*) clearSchoolName;

- (BOOL) hasMobile;
- (NSString*) mobile;
- (LinkmanPbBuilder*) setMobile:(NSString*) value;
- (LinkmanPbBuilder*) clearMobile;

- (BOOL) hasTitle;
- (NSString*) title;
- (LinkmanPbBuilder*) setTitle:(NSString*) value;
- (LinkmanPbBuilder*) clearTitle;

- (BOOL) hasSubjectName;
- (NSString*) subjectName;
- (LinkmanPbBuilder*) setSubjectName:(NSString*) value;
- (LinkmanPbBuilder*) clearSubjectName;

- (BOOL) hasFile;
- (NSData*) file;
- (LinkmanPbBuilder*) setFile:(NSData*) value;
- (LinkmanPbBuilder*) clearFile;

- (BOOL) hasStatus;
- (SInt32) status;
- (LinkmanPbBuilder*) setStatus:(SInt32) value;
- (LinkmanPbBuilder*) clearStatus;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (LinkmanPbBuilder*) setModifiedDate:(SInt64) value;
- (LinkmanPbBuilder*) clearModifiedDate;

- (BOOL) hasTimestamp;
- (SInt64) timestamp;
- (LinkmanPbBuilder*) setTimestamp:(SInt64) value;
- (LinkmanPbBuilder*) clearTimestamp;
@end


// @@protoc_insertion_point(global_scope)
