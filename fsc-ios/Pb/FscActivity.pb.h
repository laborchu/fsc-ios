// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class FscActivityApplyPb;
@class FscActivityApplyPbBuilder;
@class FscActivityListPb;
@class FscActivityListPbBuilder;
@class FscActivityPb;
@class FscActivityPbBuilder;



@interface FscActivityRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define FscActivityListPb_activityPb @"activityPb"
@interface FscActivityListPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * activityPbArray;
}
@property (readonly, strong) NSArray * activityPb;
- (FscActivityPb*)activityPbAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscActivityListPbBuilder*) builder;
+ (FscActivityListPbBuilder*) builder;
+ (FscActivityListPbBuilder*) builderWithPrototype:(FscActivityListPb*) prototype;
- (FscActivityListPbBuilder*) toBuilder;

+ (FscActivityListPb*) parseFromData:(NSData*) data;
+ (FscActivityListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscActivityListPb*) parseFromInputStream:(NSInputStream*) input;
+ (FscActivityListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscActivityListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscActivityListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscActivityListPbBuilder : PBGeneratedMessageBuilder {
@private
  FscActivityListPb* resultFscActivityListPb;
}

- (FscActivityListPb*) defaultInstance;

- (FscActivityListPbBuilder*) clear;
- (FscActivityListPbBuilder*) clone;

- (FscActivityListPb*) build;
- (FscActivityListPb*) buildPartial;

- (FscActivityListPbBuilder*) mergeFrom:(FscActivityListPb*) other;
- (FscActivityListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscActivityListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)activityPb;
- (FscActivityPb*)activityPbAtIndex:(NSUInteger)index;
- (FscActivityListPbBuilder *)addActivityPb:(FscActivityPb*)value;
- (FscActivityListPbBuilder *)setActivityPbArray:(NSArray *)array;
- (FscActivityListPbBuilder *)clearActivityPb;
@end

#define FscActivityPb_id @"id"
#define FscActivityPb_actName @"actName"
#define FscActivityPb_coverImg @"coverImg"
#define FscActivityPb_modifiedDate @"modifiedDate"
#define FscActivityPb_deadline @"deadline"
#define FscActivityPb_startTime @"startTime"
#define FscActivityPb_endTime @"endTime"
#define FscActivityPb_desc @"desc"
#define FscActivityPb_actNum @"actNum"
#define FscActivityPb_applyStatus @"applyStatus"
@interface FscActivityPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasDeadline_:1;
  BOOL hasStartTime_:1;
  BOOL hasEndTime_:1;
  BOOL hasActNum_:1;
  BOOL hasApplyStatus_:1;
  BOOL hasActName_:1;
  BOOL hasCoverImg_:1;
  BOOL hasDesc_:1;
  SInt64 id;
  SInt64 modifiedDate;
  SInt64 deadline;
  SInt64 startTime;
  SInt64 endTime;
  SInt64 actNum;
  SInt32 applyStatus;
  NSString* actName;
  NSString* coverImg;
  NSString* desc;
}
- (BOOL) hasId;
- (BOOL) hasActName;
- (BOOL) hasCoverImg;
- (BOOL) hasModifiedDate;
- (BOOL) hasDeadline;
- (BOOL) hasStartTime;
- (BOOL) hasEndTime;
- (BOOL) hasDesc;
- (BOOL) hasActNum;
- (BOOL) hasApplyStatus;
@property (readonly) SInt64 id;
@property (readonly, strong) NSString* actName;
@property (readonly, strong) NSString* coverImg;
@property (readonly) SInt64 modifiedDate;
@property (readonly) SInt64 deadline;
@property (readonly) SInt64 startTime;
@property (readonly) SInt64 endTime;
@property (readonly, strong) NSString* desc;
@property (readonly) SInt64 actNum;
@property (readonly) SInt32 applyStatus;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscActivityPbBuilder*) builder;
+ (FscActivityPbBuilder*) builder;
+ (FscActivityPbBuilder*) builderWithPrototype:(FscActivityPb*) prototype;
- (FscActivityPbBuilder*) toBuilder;

+ (FscActivityPb*) parseFromData:(NSData*) data;
+ (FscActivityPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscActivityPb*) parseFromInputStream:(NSInputStream*) input;
+ (FscActivityPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscActivityPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscActivityPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscActivityPbBuilder : PBGeneratedMessageBuilder {
@private
  FscActivityPb* resultFscActivityPb;
}

- (FscActivityPb*) defaultInstance;

- (FscActivityPbBuilder*) clear;
- (FscActivityPbBuilder*) clone;

- (FscActivityPb*) build;
- (FscActivityPb*) buildPartial;

- (FscActivityPbBuilder*) mergeFrom:(FscActivityPb*) other;
- (FscActivityPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscActivityPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (FscActivityPbBuilder*) setId:(SInt64) value;
- (FscActivityPbBuilder*) clearId;

- (BOOL) hasActName;
- (NSString*) actName;
- (FscActivityPbBuilder*) setActName:(NSString*) value;
- (FscActivityPbBuilder*) clearActName;

- (BOOL) hasCoverImg;
- (NSString*) coverImg;
- (FscActivityPbBuilder*) setCoverImg:(NSString*) value;
- (FscActivityPbBuilder*) clearCoverImg;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (FscActivityPbBuilder*) setModifiedDate:(SInt64) value;
- (FscActivityPbBuilder*) clearModifiedDate;

- (BOOL) hasDeadline;
- (SInt64) deadline;
- (FscActivityPbBuilder*) setDeadline:(SInt64) value;
- (FscActivityPbBuilder*) clearDeadline;

- (BOOL) hasStartTime;
- (SInt64) startTime;
- (FscActivityPbBuilder*) setStartTime:(SInt64) value;
- (FscActivityPbBuilder*) clearStartTime;

- (BOOL) hasEndTime;
- (SInt64) endTime;
- (FscActivityPbBuilder*) setEndTime:(SInt64) value;
- (FscActivityPbBuilder*) clearEndTime;

- (BOOL) hasDesc;
- (NSString*) desc;
- (FscActivityPbBuilder*) setDesc:(NSString*) value;
- (FscActivityPbBuilder*) clearDesc;

- (BOOL) hasActNum;
- (SInt64) actNum;
- (FscActivityPbBuilder*) setActNum:(SInt64) value;
- (FscActivityPbBuilder*) clearActNum;

- (BOOL) hasApplyStatus;
- (SInt32) applyStatus;
- (FscActivityPbBuilder*) setApplyStatus:(SInt32) value;
- (FscActivityPbBuilder*) clearApplyStatus;
@end

#define FscActivityApplyPb_actId @"actId"
@interface FscActivityApplyPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasActId_:1;
  SInt64 actId;
}
- (BOOL) hasActId;
@property (readonly) SInt64 actId;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscActivityApplyPbBuilder*) builder;
+ (FscActivityApplyPbBuilder*) builder;
+ (FscActivityApplyPbBuilder*) builderWithPrototype:(FscActivityApplyPb*) prototype;
- (FscActivityApplyPbBuilder*) toBuilder;

+ (FscActivityApplyPb*) parseFromData:(NSData*) data;
+ (FscActivityApplyPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscActivityApplyPb*) parseFromInputStream:(NSInputStream*) input;
+ (FscActivityApplyPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscActivityApplyPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscActivityApplyPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscActivityApplyPbBuilder : PBGeneratedMessageBuilder {
@private
  FscActivityApplyPb* resultFscActivityApplyPb;
}

- (FscActivityApplyPb*) defaultInstance;

- (FscActivityApplyPbBuilder*) clear;
- (FscActivityApplyPbBuilder*) clone;

- (FscActivityApplyPb*) build;
- (FscActivityApplyPb*) buildPartial;

- (FscActivityApplyPbBuilder*) mergeFrom:(FscActivityApplyPb*) other;
- (FscActivityApplyPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscActivityApplyPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasActId;
- (SInt64) actId;
- (FscActivityApplyPbBuilder*) setActId:(SInt64) value;
- (FscActivityApplyPbBuilder*) clearActId;
@end


// @@protoc_insertion_point(global_scope)