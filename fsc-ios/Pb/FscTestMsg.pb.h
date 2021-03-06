// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class FscTestMsgPb;
@class FscTestMsgPbBuilder;



@interface FscTestMsgRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define FscTestMsgPb_id @"id"
#define FscTestMsgPb_msg @"msg"
#define FscTestMsgPb_startTime @"startTime"
#define FscTestMsgPb_endTime @"endTime"
@interface FscTestMsgPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasStartTime_:1;
  BOOL hasEndTime_:1;
  BOOL hasMsg_:1;
  SInt64 id;
  SInt64 startTime;
  SInt64 endTime;
  NSString* msg;
}
- (BOOL) hasId;
- (BOOL) hasMsg;
- (BOOL) hasStartTime;
- (BOOL) hasEndTime;
@property (readonly) SInt64 id;
@property (readonly, strong) NSString* msg;
@property (readonly) SInt64 startTime;
@property (readonly) SInt64 endTime;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscTestMsgPbBuilder*) builder;
+ (FscTestMsgPbBuilder*) builder;
+ (FscTestMsgPbBuilder*) builderWithPrototype:(FscTestMsgPb*) prototype;
- (FscTestMsgPbBuilder*) toBuilder;

+ (FscTestMsgPb*) parseFromData:(NSData*) data;
+ (FscTestMsgPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscTestMsgPb*) parseFromInputStream:(NSInputStream*) input;
+ (FscTestMsgPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscTestMsgPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscTestMsgPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscTestMsgPbBuilder : PBGeneratedMessageBuilder {
@private
  FscTestMsgPb* resultFscTestMsgPb;
}

- (FscTestMsgPb*) defaultInstance;

- (FscTestMsgPbBuilder*) clear;
- (FscTestMsgPbBuilder*) clone;

- (FscTestMsgPb*) build;
- (FscTestMsgPb*) buildPartial;

- (FscTestMsgPbBuilder*) mergeFrom:(FscTestMsgPb*) other;
- (FscTestMsgPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscTestMsgPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (FscTestMsgPbBuilder*) setId:(SInt64) value;
- (FscTestMsgPbBuilder*) clearId;

- (BOOL) hasMsg;
- (NSString*) msg;
- (FscTestMsgPbBuilder*) setMsg:(NSString*) value;
- (FscTestMsgPbBuilder*) clearMsg;

- (BOOL) hasStartTime;
- (SInt64) startTime;
- (FscTestMsgPbBuilder*) setStartTime:(SInt64) value;
- (FscTestMsgPbBuilder*) clearStartTime;

- (BOOL) hasEndTime;
- (SInt64) endTime;
- (FscTestMsgPbBuilder*) setEndTime:(SInt64) value;
- (FscTestMsgPbBuilder*) clearEndTime;
@end


// @@protoc_insertion_point(global_scope)
