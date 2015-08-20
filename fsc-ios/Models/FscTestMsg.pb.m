// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscTestMsg.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscTestMsgRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscTestMsgRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FscTestMsgPb ()
@property SInt64 id;
@property (strong) NSString* msg;
@property SInt64 startTime;
@property SInt64 endTime;
@end

@implementation FscTestMsgPb

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasMsg {
  return !!hasMsg_;
}
- (void) setHasMsg:(BOOL) _value_ {
  hasMsg_ = !!_value_;
}
@synthesize msg;
- (BOOL) hasStartTime {
  return !!hasStartTime_;
}
- (void) setHasStartTime:(BOOL) _value_ {
  hasStartTime_ = !!_value_;
}
@synthesize startTime;
- (BOOL) hasEndTime {
  return !!hasEndTime_;
}
- (void) setHasEndTime:(BOOL) _value_ {
  hasEndTime_ = !!_value_;
}
@synthesize endTime;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.msg = @"";
    self.startTime = 0L;
    self.endTime = 0L;
  }
  return self;
}
static FscTestMsgPb* defaultFscTestMsgPbInstance = nil;
+ (void) initialize {
  if (self == [FscTestMsgPb class]) {
    defaultFscTestMsgPbInstance = [[FscTestMsgPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscTestMsgPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscTestMsgPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeInt64:1 value:self.id];
  }
  if (self.hasMsg) {
    [output writeString:2 value:self.msg];
  }
  if (self.hasStartTime) {
    [output writeInt64:3 value:self.startTime];
  }
  if (self.hasEndTime) {
    [output writeInt64:4 value:self.endTime];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasId) {
    size_ += computeInt64Size(1, self.id);
  }
  if (self.hasMsg) {
    size_ += computeStringSize(2, self.msg);
  }
  if (self.hasStartTime) {
    size_ += computeInt64Size(3, self.startTime);
  }
  if (self.hasEndTime) {
    size_ += computeInt64Size(4, self.endTime);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscTestMsgPb*) parseFromData:(NSData*) data {
  return (FscTestMsgPb*)[[[FscTestMsgPb builder] mergeFromData:data] build];
}
+ (FscTestMsgPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTestMsgPb*)[[[FscTestMsgPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscTestMsgPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscTestMsgPb*)[[[FscTestMsgPb builder] mergeFromInputStream:input] build];
}
+ (FscTestMsgPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTestMsgPb*)[[[FscTestMsgPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTestMsgPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscTestMsgPb*)[[[FscTestMsgPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscTestMsgPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTestMsgPb*)[[[FscTestMsgPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTestMsgPbBuilder*) builder {
  return [[FscTestMsgPbBuilder alloc] init];
}
+ (FscTestMsgPbBuilder*) builderWithPrototype:(FscTestMsgPb*) prototype {
  return [[FscTestMsgPb builder] mergeFrom:prototype];
}
- (FscTestMsgPbBuilder*) builder {
  return [FscTestMsgPb builder];
}
- (FscTestMsgPbBuilder*) toBuilder {
  return [FscTestMsgPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasMsg) {
    [output appendFormat:@"%@%@: %@\n", indent, @"msg", self.msg];
  }
  if (self.hasStartTime) {
    [output appendFormat:@"%@%@: %@\n", indent, @"startTime", [NSNumber numberWithLongLong:self.startTime]];
  }
  if (self.hasEndTime) {
    [output appendFormat:@"%@%@: %@\n", indent, @"endTime", [NSNumber numberWithLongLong:self.endTime]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasMsg) {
    [dictionary setObject: self.msg forKey: @"msg"];
  }
  if (self.hasStartTime) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.startTime] forKey: @"startTime"];
  }
  if (self.hasEndTime) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.endTime] forKey: @"endTime"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscTestMsgPb class]]) {
    return NO;
  }
  FscTestMsgPb *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasMsg == otherMessage.hasMsg &&
      (!self.hasMsg || [self.msg isEqual:otherMessage.msg]) &&
      self.hasStartTime == otherMessage.hasStartTime &&
      (!self.hasStartTime || self.startTime == otherMessage.startTime) &&
      self.hasEndTime == otherMessage.hasEndTime &&
      (!self.hasEndTime || self.endTime == otherMessage.endTime) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasMsg) {
    hashCode = hashCode * 31 + [self.msg hash];
  }
  if (self.hasStartTime) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.startTime] hash];
  }
  if (self.hasEndTime) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.endTime] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscTestMsgPbBuilder()
@property (strong) FscTestMsgPb* resultFscTestMsgPb;
@end

@implementation FscTestMsgPbBuilder
@synthesize resultFscTestMsgPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscTestMsgPb = [[FscTestMsgPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscTestMsgPb;
}
- (FscTestMsgPbBuilder*) clear {
  self.resultFscTestMsgPb = [[FscTestMsgPb alloc] init];
  return self;
}
- (FscTestMsgPbBuilder*) clone {
  return [FscTestMsgPb builderWithPrototype:resultFscTestMsgPb];
}
- (FscTestMsgPb*) defaultInstance {
  return [FscTestMsgPb defaultInstance];
}
- (FscTestMsgPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscTestMsgPb*) buildPartial {
  FscTestMsgPb* returnMe = resultFscTestMsgPb;
  self.resultFscTestMsgPb = nil;
  return returnMe;
}
- (FscTestMsgPbBuilder*) mergeFrom:(FscTestMsgPb*) other {
  if (other == [FscTestMsgPb defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasMsg) {
    [self setMsg:other.msg];
  }
  if (other.hasStartTime) {
    [self setStartTime:other.startTime];
  }
  if (other.hasEndTime) {
    [self setEndTime:other.endTime];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscTestMsgPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscTestMsgPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setId:[input readInt64]];
        break;
      }
      case 18: {
        [self setMsg:[input readString]];
        break;
      }
      case 24: {
        [self setStartTime:[input readInt64]];
        break;
      }
      case 32: {
        [self setEndTime:[input readInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultFscTestMsgPb.hasId;
}
- (SInt64) id {
  return resultFscTestMsgPb.id;
}
- (FscTestMsgPbBuilder*) setId:(SInt64) value {
  resultFscTestMsgPb.hasId = YES;
  resultFscTestMsgPb.id = value;
  return self;
}
- (FscTestMsgPbBuilder*) clearId {
  resultFscTestMsgPb.hasId = NO;
  resultFscTestMsgPb.id = 0L;
  return self;
}
- (BOOL) hasMsg {
  return resultFscTestMsgPb.hasMsg;
}
- (NSString*) msg {
  return resultFscTestMsgPb.msg;
}
- (FscTestMsgPbBuilder*) setMsg:(NSString*) value {
  resultFscTestMsgPb.hasMsg = YES;
  resultFscTestMsgPb.msg = value;
  return self;
}
- (FscTestMsgPbBuilder*) clearMsg {
  resultFscTestMsgPb.hasMsg = NO;
  resultFscTestMsgPb.msg = @"";
  return self;
}
- (BOOL) hasStartTime {
  return resultFscTestMsgPb.hasStartTime;
}
- (SInt64) startTime {
  return resultFscTestMsgPb.startTime;
}
- (FscTestMsgPbBuilder*) setStartTime:(SInt64) value {
  resultFscTestMsgPb.hasStartTime = YES;
  resultFscTestMsgPb.startTime = value;
  return self;
}
- (FscTestMsgPbBuilder*) clearStartTime {
  resultFscTestMsgPb.hasStartTime = NO;
  resultFscTestMsgPb.startTime = 0L;
  return self;
}
- (BOOL) hasEndTime {
  return resultFscTestMsgPb.hasEndTime;
}
- (SInt64) endTime {
  return resultFscTestMsgPb.endTime;
}
- (FscTestMsgPbBuilder*) setEndTime:(SInt64) value {
  resultFscTestMsgPb.hasEndTime = YES;
  resultFscTestMsgPb.endTime = value;
  return self;
}
- (FscTestMsgPbBuilder*) clearEndTime {
  resultFscTestMsgPb.hasEndTime = NO;
  resultFscTestMsgPb.endTime = 0L;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
