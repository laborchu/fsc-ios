// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class FscFuncStatPb;
@class FscFuncStatPbBuilder;
@class FscFuncStatPbList;
@class FscFuncStatPbListBuilder;



@interface FscFuncStatRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define FscFuncStatPbList_fscFuncStatPb @"fscFuncStatPb"
@interface FscFuncStatPbList : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * fscFuncStatPbArray;
}
@property (readonly, strong) NSArray * fscFuncStatPb;
- (FscFuncStatPb*)fscFuncStatPbAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscFuncStatPbListBuilder*) builder;
+ (FscFuncStatPbListBuilder*) builder;
+ (FscFuncStatPbListBuilder*) builderWithPrototype:(FscFuncStatPbList*) prototype;
- (FscFuncStatPbListBuilder*) toBuilder;

+ (FscFuncStatPbList*) parseFromData:(NSData*) data;
+ (FscFuncStatPbList*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscFuncStatPbList*) parseFromInputStream:(NSInputStream*) input;
+ (FscFuncStatPbList*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscFuncStatPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscFuncStatPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscFuncStatPbListBuilder : PBGeneratedMessageBuilder {
@private
  FscFuncStatPbList* resultFscFuncStatPbList;
}

- (FscFuncStatPbList*) defaultInstance;

- (FscFuncStatPbListBuilder*) clear;
- (FscFuncStatPbListBuilder*) clone;

- (FscFuncStatPbList*) build;
- (FscFuncStatPbList*) buildPartial;

- (FscFuncStatPbListBuilder*) mergeFrom:(FscFuncStatPbList*) other;
- (FscFuncStatPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscFuncStatPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)fscFuncStatPb;
- (FscFuncStatPb*)fscFuncStatPbAtIndex:(NSUInteger)index;
- (FscFuncStatPbListBuilder *)addFscFuncStatPb:(FscFuncStatPb*)value;
- (FscFuncStatPbListBuilder *)setFscFuncStatPbArray:(NSArray *)array;
- (FscFuncStatPbListBuilder *)clearFscFuncStatPb;
@end

#define FscFuncStatPb_userId @"userId"
#define FscFuncStatPb_code @"code"
#define FscFuncStatPb_createdDate @"createdDate"
@interface FscFuncStatPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasUserId_:1;
  BOOL hasCreatedDate_:1;
  BOOL hasCode_:1;
  SInt64 userId;
  SInt64 createdDate;
  NSString* code;
}
- (BOOL) hasUserId;
- (BOOL) hasCode;
- (BOOL) hasCreatedDate;
@property (readonly) SInt64 userId;
@property (readonly, strong) NSString* code;
@property (readonly) SInt64 createdDate;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscFuncStatPbBuilder*) builder;
+ (FscFuncStatPbBuilder*) builder;
+ (FscFuncStatPbBuilder*) builderWithPrototype:(FscFuncStatPb*) prototype;
- (FscFuncStatPbBuilder*) toBuilder;

+ (FscFuncStatPb*) parseFromData:(NSData*) data;
+ (FscFuncStatPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscFuncStatPb*) parseFromInputStream:(NSInputStream*) input;
+ (FscFuncStatPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscFuncStatPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscFuncStatPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscFuncStatPbBuilder : PBGeneratedMessageBuilder {
@private
  FscFuncStatPb* resultFscFuncStatPb;
}

- (FscFuncStatPb*) defaultInstance;

- (FscFuncStatPbBuilder*) clear;
- (FscFuncStatPbBuilder*) clone;

- (FscFuncStatPb*) build;
- (FscFuncStatPb*) buildPartial;

- (FscFuncStatPbBuilder*) mergeFrom:(FscFuncStatPb*) other;
- (FscFuncStatPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscFuncStatPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasUserId;
- (SInt64) userId;
- (FscFuncStatPbBuilder*) setUserId:(SInt64) value;
- (FscFuncStatPbBuilder*) clearUserId;

- (BOOL) hasCode;
- (NSString*) code;
- (FscFuncStatPbBuilder*) setCode:(NSString*) value;
- (FscFuncStatPbBuilder*) clearCode;

- (BOOL) hasCreatedDate;
- (SInt64) createdDate;
- (FscFuncStatPbBuilder*) setCreatedDate:(SInt64) value;
- (FscFuncStatPbBuilder*) clearCreatedDate;
@end


// @@protoc_insertion_point(global_scope)