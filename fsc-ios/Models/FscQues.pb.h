// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class QuesListPb;
@class QuesListPbBuilder;
@class QuesPb;
@class QuesPbBuilder;



@interface FscQuesRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define QuesListPb_ques @"ques"
@interface QuesListPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * quesArray;
}
@property (readonly, strong) NSArray * ques;
- (QuesPb*)quesAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (QuesListPbBuilder*) builder;
+ (QuesListPbBuilder*) builder;
+ (QuesListPbBuilder*) builderWithPrototype:(QuesListPb*) prototype;
- (QuesListPbBuilder*) toBuilder;

+ (QuesListPb*) parseFromData:(NSData*) data;
+ (QuesListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (QuesListPb*) parseFromInputStream:(NSInputStream*) input;
+ (QuesListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (QuesListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (QuesListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface QuesListPbBuilder : PBGeneratedMessageBuilder {
@private
  QuesListPb* resultQuesListPb;
}

- (QuesListPb*) defaultInstance;

- (QuesListPbBuilder*) clear;
- (QuesListPbBuilder*) clone;

- (QuesListPb*) build;
- (QuesListPb*) buildPartial;

- (QuesListPbBuilder*) mergeFrom:(QuesListPb*) other;
- (QuesListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (QuesListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)ques;
- (QuesPb*)quesAtIndex:(NSUInteger)index;
- (QuesListPbBuilder *)addQues:(QuesPb*)value;
- (QuesListPbBuilder *)setQuesArray:(NSArray *)array;
- (QuesListPbBuilder *)clearQues;
@end

#define QuesPb_id @"id"
#define QuesPb_schoolId @"schoolId"
#define QuesPb_title @"title"
#define QuesPb_content @"content"
#define QuesPb_dataStatus @"dataStatus"
#define QuesPb_modifiedDate @"modifiedDate"
#define QuesPb_timestamp @"timestamp"
#define QuesPb_createdBy @"createdBy"
@interface QuesPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasSchoolId_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasTimestamp_:1;
  BOOL hasCreatedBy_:1;
  BOOL hasDataStatus_:1;
  BOOL hasTitle_:1;
  BOOL hasContent_:1;
  SInt64 id;
  SInt64 schoolId;
  SInt64 modifiedDate;
  SInt64 timestamp;
  SInt64 createdBy;
  SInt32 dataStatus;
  NSString* title;
  NSString* content;
}
- (BOOL) hasId;
- (BOOL) hasSchoolId;
- (BOOL) hasTitle;
- (BOOL) hasContent;
- (BOOL) hasDataStatus;
- (BOOL) hasModifiedDate;
- (BOOL) hasTimestamp;
- (BOOL) hasCreatedBy;
@property (readonly) SInt64 id;
@property (readonly) SInt64 schoolId;
@property (readonly, strong) NSString* title;
@property (readonly, strong) NSString* content;
@property (readonly) SInt32 dataStatus;
@property (readonly) SInt64 modifiedDate;
@property (readonly) SInt64 timestamp;
@property (readonly) SInt64 createdBy;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (QuesPbBuilder*) builder;
+ (QuesPbBuilder*) builder;
+ (QuesPbBuilder*) builderWithPrototype:(QuesPb*) prototype;
- (QuesPbBuilder*) toBuilder;

+ (QuesPb*) parseFromData:(NSData*) data;
+ (QuesPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (QuesPb*) parseFromInputStream:(NSInputStream*) input;
+ (QuesPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (QuesPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (QuesPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface QuesPbBuilder : PBGeneratedMessageBuilder {
@private
  QuesPb* resultQuesPb;
}

- (QuesPb*) defaultInstance;

- (QuesPbBuilder*) clear;
- (QuesPbBuilder*) clone;

- (QuesPb*) build;
- (QuesPb*) buildPartial;

- (QuesPbBuilder*) mergeFrom:(QuesPb*) other;
- (QuesPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (QuesPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (QuesPbBuilder*) setId:(SInt64) value;
- (QuesPbBuilder*) clearId;

- (BOOL) hasSchoolId;
- (SInt64) schoolId;
- (QuesPbBuilder*) setSchoolId:(SInt64) value;
- (QuesPbBuilder*) clearSchoolId;

- (BOOL) hasTitle;
- (NSString*) title;
- (QuesPbBuilder*) setTitle:(NSString*) value;
- (QuesPbBuilder*) clearTitle;

- (BOOL) hasContent;
- (NSString*) content;
- (QuesPbBuilder*) setContent:(NSString*) value;
- (QuesPbBuilder*) clearContent;

- (BOOL) hasDataStatus;
- (SInt32) dataStatus;
- (QuesPbBuilder*) setDataStatus:(SInt32) value;
- (QuesPbBuilder*) clearDataStatus;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (QuesPbBuilder*) setModifiedDate:(SInt64) value;
- (QuesPbBuilder*) clearModifiedDate;

- (BOOL) hasTimestamp;
- (SInt64) timestamp;
- (QuesPbBuilder*) setTimestamp:(SInt64) value;
- (QuesPbBuilder*) clearTimestamp;

- (BOOL) hasCreatedBy;
- (SInt64) createdBy;
- (QuesPbBuilder*) setCreatedBy:(SInt64) value;
- (QuesPbBuilder*) clearCreatedBy;
@end


// @@protoc_insertion_point(global_scope)
