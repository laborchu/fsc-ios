// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscAnswer.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscAnswerRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscAnswerRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface AnswerListPb ()
@property (strong) NSMutableArray * answerArray;
@end

@implementation AnswerListPb

@synthesize answerArray;
@dynamic answer;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static AnswerListPb* defaultAnswerListPbInstance = nil;
+ (void) initialize {
  if (self == [AnswerListPb class]) {
    defaultAnswerListPbInstance = [[AnswerListPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultAnswerListPbInstance;
}
- (instancetype) defaultInstance {
  return defaultAnswerListPbInstance;
}
- (NSArray *)answer {
  return answerArray;
}
- (AnswerPb*)answerAtIndex:(NSUInteger)index {
  return [answerArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.answerArray enumerateObjectsUsingBlock:^(AnswerPb *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:1 value:element];
  }];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  [self.answerArray enumerateObjectsUsingBlock:^(AnswerPb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (AnswerListPb*) parseFromData:(NSData*) data {
  return (AnswerListPb*)[[[AnswerListPb builder] mergeFromData:data] build];
}
+ (AnswerListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AnswerListPb*)[[[AnswerListPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (AnswerListPb*) parseFromInputStream:(NSInputStream*) input {
  return (AnswerListPb*)[[[AnswerListPb builder] mergeFromInputStream:input] build];
}
+ (AnswerListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AnswerListPb*)[[[AnswerListPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AnswerListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (AnswerListPb*)[[[AnswerListPb builder] mergeFromCodedInputStream:input] build];
}
+ (AnswerListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AnswerListPb*)[[[AnswerListPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AnswerListPbBuilder*) builder {
  return [[AnswerListPbBuilder alloc] init];
}
+ (AnswerListPbBuilder*) builderWithPrototype:(AnswerListPb*) prototype {
  return [[AnswerListPb builder] mergeFrom:prototype];
}
- (AnswerListPbBuilder*) builder {
  return [AnswerListPb builder];
}
- (AnswerListPbBuilder*) toBuilder {
  return [AnswerListPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.answerArray enumerateObjectsUsingBlock:^(AnswerPb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"answer"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (AnswerPb* element in self.answerArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"answer"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[AnswerListPb class]]) {
    return NO;
  }
  AnswerListPb *otherMessage = other;
  return
      [self.answerArray isEqualToArray:otherMessage.answerArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.answerArray enumerateObjectsUsingBlock:^(AnswerPb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface AnswerListPbBuilder()
@property (strong) AnswerListPb* resultAnswerListPb;
@end

@implementation AnswerListPbBuilder
@synthesize resultAnswerListPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAnswerListPb = [[AnswerListPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAnswerListPb;
}
- (AnswerListPbBuilder*) clear {
  self.resultAnswerListPb = [[AnswerListPb alloc] init];
  return self;
}
- (AnswerListPbBuilder*) clone {
  return [AnswerListPb builderWithPrototype:resultAnswerListPb];
}
- (AnswerListPb*) defaultInstance {
  return [AnswerListPb defaultInstance];
}
- (AnswerListPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (AnswerListPb*) buildPartial {
  AnswerListPb* returnMe = resultAnswerListPb;
  self.resultAnswerListPb = nil;
  return returnMe;
}
- (AnswerListPbBuilder*) mergeFrom:(AnswerListPb*) other {
  if (other == [AnswerListPb defaultInstance]) {
    return self;
  }
  if (other.answerArray.count > 0) {
    if (resultAnswerListPb.answerArray == nil) {
      resultAnswerListPb.answerArray = [[NSMutableArray alloc] initWithArray:other.answerArray];
    } else {
      [resultAnswerListPb.answerArray addObjectsFromArray:other.answerArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (AnswerListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (AnswerListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
      case 10: {
        AnswerPbBuilder* subBuilder = [AnswerPb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addAnswer:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray *)answer {
  return resultAnswerListPb.answerArray;
}
- (AnswerPb*)answerAtIndex:(NSUInteger)index {
  return [resultAnswerListPb answerAtIndex:index];
}
- (AnswerListPbBuilder *)addAnswer:(AnswerPb*)value {
  if (resultAnswerListPb.answerArray == nil) {
    resultAnswerListPb.answerArray = [[NSMutableArray alloc]init];
  }
  [resultAnswerListPb.answerArray addObject:value];
  return self;
}
- (AnswerListPbBuilder *)setAnswerArray:(NSArray *)array {
  resultAnswerListPb.answerArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (AnswerListPbBuilder *)clearAnswer {
  resultAnswerListPb.answerArray = nil;
  return self;
}
@end

@interface AnswerPb ()
@property SInt64 id;
@property SInt64 quesId;
@property (strong) NSString* answer;
@property SInt32 dataStatus;
@property SInt64 modifiedDate;
@property SInt64 timestamp;
@property SInt64 createdBy;
@property (strong) NSString* name;
@property (strong) NSString* portrait;
@end

@implementation AnswerPb

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasQuesId {
  return !!hasQuesId_;
}
- (void) setHasQuesId:(BOOL) _value_ {
  hasQuesId_ = !!_value_;
}
@synthesize quesId;
- (BOOL) hasAnswer {
  return !!hasAnswer_;
}
- (void) setHasAnswer:(BOOL) _value_ {
  hasAnswer_ = !!_value_;
}
@synthesize answer;
- (BOOL) hasDataStatus {
  return !!hasDataStatus_;
}
- (void) setHasDataStatus:(BOOL) _value_ {
  hasDataStatus_ = !!_value_;
}
@synthesize dataStatus;
- (BOOL) hasModifiedDate {
  return !!hasModifiedDate_;
}
- (void) setHasModifiedDate:(BOOL) _value_ {
  hasModifiedDate_ = !!_value_;
}
@synthesize modifiedDate;
- (BOOL) hasTimestamp {
  return !!hasTimestamp_;
}
- (void) setHasTimestamp:(BOOL) _value_ {
  hasTimestamp_ = !!_value_;
}
@synthesize timestamp;
- (BOOL) hasCreatedBy {
  return !!hasCreatedBy_;
}
- (void) setHasCreatedBy:(BOOL) _value_ {
  hasCreatedBy_ = !!_value_;
}
@synthesize createdBy;
- (BOOL) hasName {
  return !!hasName_;
}
- (void) setHasName:(BOOL) _value_ {
  hasName_ = !!_value_;
}
@synthesize name;
- (BOOL) hasPortrait {
  return !!hasPortrait_;
}
- (void) setHasPortrait:(BOOL) _value_ {
  hasPortrait_ = !!_value_;
}
@synthesize portrait;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.quesId = 0L;
    self.answer = @"";
    self.dataStatus = 0;
    self.modifiedDate = 0L;
    self.timestamp = 0L;
    self.createdBy = 0L;
    self.name = @"";
    self.portrait = @"";
  }
  return self;
}
static AnswerPb* defaultAnswerPbInstance = nil;
+ (void) initialize {
  if (self == [AnswerPb class]) {
    defaultAnswerPbInstance = [[AnswerPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultAnswerPbInstance;
}
- (instancetype) defaultInstance {
  return defaultAnswerPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeInt64:1 value:self.id];
  }
  if (self.hasQuesId) {
    [output writeInt64:2 value:self.quesId];
  }
  if (self.hasAnswer) {
    [output writeString:3 value:self.answer];
  }
  if (self.hasDataStatus) {
    [output writeInt32:4 value:self.dataStatus];
  }
  if (self.hasModifiedDate) {
    [output writeInt64:5 value:self.modifiedDate];
  }
  if (self.hasTimestamp) {
    [output writeInt64:6 value:self.timestamp];
  }
  if (self.hasCreatedBy) {
    [output writeInt64:7 value:self.createdBy];
  }
  if (self.hasName) {
    [output writeString:8 value:self.name];
  }
  if (self.hasPortrait) {
    [output writeString:9 value:self.portrait];
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
  if (self.hasQuesId) {
    size_ += computeInt64Size(2, self.quesId);
  }
  if (self.hasAnswer) {
    size_ += computeStringSize(3, self.answer);
  }
  if (self.hasDataStatus) {
    size_ += computeInt32Size(4, self.dataStatus);
  }
  if (self.hasModifiedDate) {
    size_ += computeInt64Size(5, self.modifiedDate);
  }
  if (self.hasTimestamp) {
    size_ += computeInt64Size(6, self.timestamp);
  }
  if (self.hasCreatedBy) {
    size_ += computeInt64Size(7, self.createdBy);
  }
  if (self.hasName) {
    size_ += computeStringSize(8, self.name);
  }
  if (self.hasPortrait) {
    size_ += computeStringSize(9, self.portrait);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (AnswerPb*) parseFromData:(NSData*) data {
  return (AnswerPb*)[[[AnswerPb builder] mergeFromData:data] build];
}
+ (AnswerPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AnswerPb*)[[[AnswerPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (AnswerPb*) parseFromInputStream:(NSInputStream*) input {
  return (AnswerPb*)[[[AnswerPb builder] mergeFromInputStream:input] build];
}
+ (AnswerPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AnswerPb*)[[[AnswerPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AnswerPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (AnswerPb*)[[[AnswerPb builder] mergeFromCodedInputStream:input] build];
}
+ (AnswerPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (AnswerPb*)[[[AnswerPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AnswerPbBuilder*) builder {
  return [[AnswerPbBuilder alloc] init];
}
+ (AnswerPbBuilder*) builderWithPrototype:(AnswerPb*) prototype {
  return [[AnswerPb builder] mergeFrom:prototype];
}
- (AnswerPbBuilder*) builder {
  return [AnswerPb builder];
}
- (AnswerPbBuilder*) toBuilder {
  return [AnswerPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasQuesId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"quesId", [NSNumber numberWithLongLong:self.quesId]];
  }
  if (self.hasAnswer) {
    [output appendFormat:@"%@%@: %@\n", indent, @"answer", self.answer];
  }
  if (self.hasDataStatus) {
    [output appendFormat:@"%@%@: %@\n", indent, @"dataStatus", [NSNumber numberWithInteger:self.dataStatus]];
  }
  if (self.hasModifiedDate) {
    [output appendFormat:@"%@%@: %@\n", indent, @"modifiedDate", [NSNumber numberWithLongLong:self.modifiedDate]];
  }
  if (self.hasTimestamp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"timestamp", [NSNumber numberWithLongLong:self.timestamp]];
  }
  if (self.hasCreatedBy) {
    [output appendFormat:@"%@%@: %@\n", indent, @"createdBy", [NSNumber numberWithLongLong:self.createdBy]];
  }
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  if (self.hasPortrait) {
    [output appendFormat:@"%@%@: %@\n", indent, @"portrait", self.portrait];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasQuesId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.quesId] forKey: @"quesId"];
  }
  if (self.hasAnswer) {
    [dictionary setObject: self.answer forKey: @"answer"];
  }
  if (self.hasDataStatus) {
    [dictionary setObject: [NSNumber numberWithInteger:self.dataStatus] forKey: @"dataStatus"];
  }
  if (self.hasModifiedDate) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.modifiedDate] forKey: @"modifiedDate"];
  }
  if (self.hasTimestamp) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.timestamp] forKey: @"timestamp"];
  }
  if (self.hasCreatedBy) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.createdBy] forKey: @"createdBy"];
  }
  if (self.hasName) {
    [dictionary setObject: self.name forKey: @"name"];
  }
  if (self.hasPortrait) {
    [dictionary setObject: self.portrait forKey: @"portrait"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[AnswerPb class]]) {
    return NO;
  }
  AnswerPb *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasQuesId == otherMessage.hasQuesId &&
      (!self.hasQuesId || self.quesId == otherMessage.quesId) &&
      self.hasAnswer == otherMessage.hasAnswer &&
      (!self.hasAnswer || [self.answer isEqual:otherMessage.answer]) &&
      self.hasDataStatus == otherMessage.hasDataStatus &&
      (!self.hasDataStatus || self.dataStatus == otherMessage.dataStatus) &&
      self.hasModifiedDate == otherMessage.hasModifiedDate &&
      (!self.hasModifiedDate || self.modifiedDate == otherMessage.modifiedDate) &&
      self.hasTimestamp == otherMessage.hasTimestamp &&
      (!self.hasTimestamp || self.timestamp == otherMessage.timestamp) &&
      self.hasCreatedBy == otherMessage.hasCreatedBy &&
      (!self.hasCreatedBy || self.createdBy == otherMessage.createdBy) &&
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      self.hasPortrait == otherMessage.hasPortrait &&
      (!self.hasPortrait || [self.portrait isEqual:otherMessage.portrait]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasQuesId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.quesId] hash];
  }
  if (self.hasAnswer) {
    hashCode = hashCode * 31 + [self.answer hash];
  }
  if (self.hasDataStatus) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.dataStatus] hash];
  }
  if (self.hasModifiedDate) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.modifiedDate] hash];
  }
  if (self.hasTimestamp) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.timestamp] hash];
  }
  if (self.hasCreatedBy) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.createdBy] hash];
  }
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  if (self.hasPortrait) {
    hashCode = hashCode * 31 + [self.portrait hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface AnswerPbBuilder()
@property (strong) AnswerPb* resultAnswerPb;
@end

@implementation AnswerPbBuilder
@synthesize resultAnswerPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAnswerPb = [[AnswerPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAnswerPb;
}
- (AnswerPbBuilder*) clear {
  self.resultAnswerPb = [[AnswerPb alloc] init];
  return self;
}
- (AnswerPbBuilder*) clone {
  return [AnswerPb builderWithPrototype:resultAnswerPb];
}
- (AnswerPb*) defaultInstance {
  return [AnswerPb defaultInstance];
}
- (AnswerPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (AnswerPb*) buildPartial {
  AnswerPb* returnMe = resultAnswerPb;
  self.resultAnswerPb = nil;
  return returnMe;
}
- (AnswerPbBuilder*) mergeFrom:(AnswerPb*) other {
  if (other == [AnswerPb defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasQuesId) {
    [self setQuesId:other.quesId];
  }
  if (other.hasAnswer) {
    [self setAnswer:other.answer];
  }
  if (other.hasDataStatus) {
    [self setDataStatus:other.dataStatus];
  }
  if (other.hasModifiedDate) {
    [self setModifiedDate:other.modifiedDate];
  }
  if (other.hasTimestamp) {
    [self setTimestamp:other.timestamp];
  }
  if (other.hasCreatedBy) {
    [self setCreatedBy:other.createdBy];
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.hasPortrait) {
    [self setPortrait:other.portrait];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (AnswerPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (AnswerPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
      case 16: {
        [self setQuesId:[input readInt64]];
        break;
      }
      case 26: {
        [self setAnswer:[input readString]];
        break;
      }
      case 32: {
        [self setDataStatus:[input readInt32]];
        break;
      }
      case 40: {
        [self setModifiedDate:[input readInt64]];
        break;
      }
      case 48: {
        [self setTimestamp:[input readInt64]];
        break;
      }
      case 56: {
        [self setCreatedBy:[input readInt64]];
        break;
      }
      case 66: {
        [self setName:[input readString]];
        break;
      }
      case 74: {
        [self setPortrait:[input readString]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultAnswerPb.hasId;
}
- (SInt64) id {
  return resultAnswerPb.id;
}
- (AnswerPbBuilder*) setId:(SInt64) value {
  resultAnswerPb.hasId = YES;
  resultAnswerPb.id = value;
  return self;
}
- (AnswerPbBuilder*) clearId {
  resultAnswerPb.hasId = NO;
  resultAnswerPb.id = 0L;
  return self;
}
- (BOOL) hasQuesId {
  return resultAnswerPb.hasQuesId;
}
- (SInt64) quesId {
  return resultAnswerPb.quesId;
}
- (AnswerPbBuilder*) setQuesId:(SInt64) value {
  resultAnswerPb.hasQuesId = YES;
  resultAnswerPb.quesId = value;
  return self;
}
- (AnswerPbBuilder*) clearQuesId {
  resultAnswerPb.hasQuesId = NO;
  resultAnswerPb.quesId = 0L;
  return self;
}
- (BOOL) hasAnswer {
  return resultAnswerPb.hasAnswer;
}
- (NSString*) answer {
  return resultAnswerPb.answer;
}
- (AnswerPbBuilder*) setAnswer:(NSString*) value {
  resultAnswerPb.hasAnswer = YES;
  resultAnswerPb.answer = value;
  return self;
}
- (AnswerPbBuilder*) clearAnswer {
  resultAnswerPb.hasAnswer = NO;
  resultAnswerPb.answer = @"";
  return self;
}
- (BOOL) hasDataStatus {
  return resultAnswerPb.hasDataStatus;
}
- (SInt32) dataStatus {
  return resultAnswerPb.dataStatus;
}
- (AnswerPbBuilder*) setDataStatus:(SInt32) value {
  resultAnswerPb.hasDataStatus = YES;
  resultAnswerPb.dataStatus = value;
  return self;
}
- (AnswerPbBuilder*) clearDataStatus {
  resultAnswerPb.hasDataStatus = NO;
  resultAnswerPb.dataStatus = 0;
  return self;
}
- (BOOL) hasModifiedDate {
  return resultAnswerPb.hasModifiedDate;
}
- (SInt64) modifiedDate {
  return resultAnswerPb.modifiedDate;
}
- (AnswerPbBuilder*) setModifiedDate:(SInt64) value {
  resultAnswerPb.hasModifiedDate = YES;
  resultAnswerPb.modifiedDate = value;
  return self;
}
- (AnswerPbBuilder*) clearModifiedDate {
  resultAnswerPb.hasModifiedDate = NO;
  resultAnswerPb.modifiedDate = 0L;
  return self;
}
- (BOOL) hasTimestamp {
  return resultAnswerPb.hasTimestamp;
}
- (SInt64) timestamp {
  return resultAnswerPb.timestamp;
}
- (AnswerPbBuilder*) setTimestamp:(SInt64) value {
  resultAnswerPb.hasTimestamp = YES;
  resultAnswerPb.timestamp = value;
  return self;
}
- (AnswerPbBuilder*) clearTimestamp {
  resultAnswerPb.hasTimestamp = NO;
  resultAnswerPb.timestamp = 0L;
  return self;
}
- (BOOL) hasCreatedBy {
  return resultAnswerPb.hasCreatedBy;
}
- (SInt64) createdBy {
  return resultAnswerPb.createdBy;
}
- (AnswerPbBuilder*) setCreatedBy:(SInt64) value {
  resultAnswerPb.hasCreatedBy = YES;
  resultAnswerPb.createdBy = value;
  return self;
}
- (AnswerPbBuilder*) clearCreatedBy {
  resultAnswerPb.hasCreatedBy = NO;
  resultAnswerPb.createdBy = 0L;
  return self;
}
- (BOOL) hasName {
  return resultAnswerPb.hasName;
}
- (NSString*) name {
  return resultAnswerPb.name;
}
- (AnswerPbBuilder*) setName:(NSString*) value {
  resultAnswerPb.hasName = YES;
  resultAnswerPb.name = value;
  return self;
}
- (AnswerPbBuilder*) clearName {
  resultAnswerPb.hasName = NO;
  resultAnswerPb.name = @"";
  return self;
}
- (BOOL) hasPortrait {
  return resultAnswerPb.hasPortrait;
}
- (NSString*) portrait {
  return resultAnswerPb.portrait;
}
- (AnswerPbBuilder*) setPortrait:(NSString*) value {
  resultAnswerPb.hasPortrait = YES;
  resultAnswerPb.portrait = value;
  return self;
}
- (AnswerPbBuilder*) clearPortrait {
  resultAnswerPb.hasPortrait = NO;
  resultAnswerPb.portrait = @"";
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
