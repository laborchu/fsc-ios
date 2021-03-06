// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class FscClassPb;
@class FscClassPbBuilder;
@class FscClassPbList;
@class FscClassPbListBuilder;



@interface FscClassRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define FscClassPbList_fscClassPb @"fscClassPb"
@interface FscClassPbList : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * fscClassPbArray;
}
@property (readonly, strong) NSArray * fscClassPb;
- (FscClassPb*)fscClassPbAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscClassPbListBuilder*) builder;
+ (FscClassPbListBuilder*) builder;
+ (FscClassPbListBuilder*) builderWithPrototype:(FscClassPbList*) prototype;
- (FscClassPbListBuilder*) toBuilder;

+ (FscClassPbList*) parseFromData:(NSData*) data;
+ (FscClassPbList*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscClassPbList*) parseFromInputStream:(NSInputStream*) input;
+ (FscClassPbList*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscClassPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscClassPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscClassPbListBuilder : PBGeneratedMessageBuilder {
@private
  FscClassPbList* resultFscClassPbList;
}

- (FscClassPbList*) defaultInstance;

- (FscClassPbListBuilder*) clear;
- (FscClassPbListBuilder*) clone;

- (FscClassPbList*) build;
- (FscClassPbList*) buildPartial;

- (FscClassPbListBuilder*) mergeFrom:(FscClassPbList*) other;
- (FscClassPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscClassPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)fscClassPb;
- (FscClassPb*)fscClassPbAtIndex:(NSUInteger)index;
- (FscClassPbListBuilder *)addFscClassPb:(FscClassPb*)value;
- (FscClassPbListBuilder *)setFscClassPbArray:(NSArray *)array;
- (FscClassPbListBuilder *)clearFscClassPb;
@end

#define FscClassPb_id @"id"
#define FscClassPb_className @"className"
#define FscClassPb_gradeId @"gradeId"
#define FscClassPb_gradeName @"gradeName"
#define FscClassPb_monitorUrl @"monitorUrl"
#define FscClassPb_year @"year"
#define FscClassPb_semester @"semester"
@interface FscClassPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasGradeId_:1;
  BOOL hasYear_:1;
  BOOL hasSemester_:1;
  BOOL hasClassName_:1;
  BOOL hasGradeName_:1;
  BOOL hasMonitorUrl_:1;
  SInt64 id;
  SInt64 gradeId;
  SInt64 year;
  SInt32 semester;
  NSString* className;
  NSString* gradeName;
  NSString* monitorUrl;
}
- (BOOL) hasId;
- (BOOL) hasClassName;
- (BOOL) hasGradeId;
- (BOOL) hasGradeName;
- (BOOL) hasMonitorUrl;
- (BOOL) hasYear;
- (BOOL) hasSemester;
@property (readonly) SInt64 id;
@property (readonly, strong) NSString* className;
@property (readonly) SInt64 gradeId;
@property (readonly, strong) NSString* gradeName;
@property (readonly, strong) NSString* monitorUrl;
@property (readonly) SInt64 year;
@property (readonly) SInt32 semester;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscClassPbBuilder*) builder;
+ (FscClassPbBuilder*) builder;
+ (FscClassPbBuilder*) builderWithPrototype:(FscClassPb*) prototype;
- (FscClassPbBuilder*) toBuilder;

+ (FscClassPb*) parseFromData:(NSData*) data;
+ (FscClassPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscClassPb*) parseFromInputStream:(NSInputStream*) input;
+ (FscClassPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscClassPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscClassPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscClassPbBuilder : PBGeneratedMessageBuilder {
@private
  FscClassPb* resultFscClassPb;
}

- (FscClassPb*) defaultInstance;

- (FscClassPbBuilder*) clear;
- (FscClassPbBuilder*) clone;

- (FscClassPb*) build;
- (FscClassPb*) buildPartial;

- (FscClassPbBuilder*) mergeFrom:(FscClassPb*) other;
- (FscClassPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscClassPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (FscClassPbBuilder*) setId:(SInt64) value;
- (FscClassPbBuilder*) clearId;

- (BOOL) hasClassName;
- (NSString*) className;
- (FscClassPbBuilder*) setClassName:(NSString*) value;
- (FscClassPbBuilder*) clearClassName;

- (BOOL) hasGradeId;
- (SInt64) gradeId;
- (FscClassPbBuilder*) setGradeId:(SInt64) value;
- (FscClassPbBuilder*) clearGradeId;

- (BOOL) hasGradeName;
- (NSString*) gradeName;
- (FscClassPbBuilder*) setGradeName:(NSString*) value;
- (FscClassPbBuilder*) clearGradeName;

- (BOOL) hasMonitorUrl;
- (NSString*) monitorUrl;
- (FscClassPbBuilder*) setMonitorUrl:(NSString*) value;
- (FscClassPbBuilder*) clearMonitorUrl;

- (BOOL) hasYear;
- (SInt64) year;
- (FscClassPbBuilder*) setYear:(SInt64) value;
- (FscClassPbBuilder*) clearYear;

- (BOOL) hasSemester;
- (SInt32) semester;
- (FscClassPbBuilder*) setSemester:(SInt32) value;
- (FscClassPbBuilder*) clearSemester;
@end


// @@protoc_insertion_point(global_scope)
