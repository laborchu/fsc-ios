// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscActivity.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscActivityRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscActivityRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FscActivityListPb ()
@property (strong) NSMutableArray * activityPbArray;
@end

@implementation FscActivityListPb

@synthesize activityPbArray;
@dynamic activityPb;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static FscActivityListPb* defaultFscActivityListPbInstance = nil;
+ (void) initialize {
  if (self == [FscActivityListPb class]) {
    defaultFscActivityListPbInstance = [[FscActivityListPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscActivityListPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscActivityListPbInstance;
}
- (NSArray *)activityPb {
  return activityPbArray;
}
- (FscActivityPb*)activityPbAtIndex:(NSUInteger)index {
  return [activityPbArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.activityPbArray enumerateObjectsUsingBlock:^(FscActivityPb *element, NSUInteger idx, BOOL *stop) {
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
  [self.activityPbArray enumerateObjectsUsingBlock:^(FscActivityPb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscActivityListPb*) parseFromData:(NSData*) data {
  return (FscActivityListPb*)[[[FscActivityListPb builder] mergeFromData:data] build];
}
+ (FscActivityListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityListPb*)[[[FscActivityListPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscActivityListPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscActivityListPb*)[[[FscActivityListPb builder] mergeFromInputStream:input] build];
}
+ (FscActivityListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityListPb*)[[[FscActivityListPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscActivityListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscActivityListPb*)[[[FscActivityListPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscActivityListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityListPb*)[[[FscActivityListPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscActivityListPbBuilder*) builder {
  return [[FscActivityListPbBuilder alloc] init];
}
+ (FscActivityListPbBuilder*) builderWithPrototype:(FscActivityListPb*) prototype {
  return [[FscActivityListPb builder] mergeFrom:prototype];
}
- (FscActivityListPbBuilder*) builder {
  return [FscActivityListPb builder];
}
- (FscActivityListPbBuilder*) toBuilder {
  return [FscActivityListPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.activityPbArray enumerateObjectsUsingBlock:^(FscActivityPb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"activityPb"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (FscActivityPb* element in self.activityPbArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"activityPb"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscActivityListPb class]]) {
    return NO;
  }
  FscActivityListPb *otherMessage = other;
  return
      [self.activityPbArray isEqualToArray:otherMessage.activityPbArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.activityPbArray enumerateObjectsUsingBlock:^(FscActivityPb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscActivityListPbBuilder()
@property (strong) FscActivityListPb* resultFscActivityListPb;
@end

@implementation FscActivityListPbBuilder
@synthesize resultFscActivityListPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscActivityListPb = [[FscActivityListPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscActivityListPb;
}
- (FscActivityListPbBuilder*) clear {
  self.resultFscActivityListPb = [[FscActivityListPb alloc] init];
  return self;
}
- (FscActivityListPbBuilder*) clone {
  return [FscActivityListPb builderWithPrototype:resultFscActivityListPb];
}
- (FscActivityListPb*) defaultInstance {
  return [FscActivityListPb defaultInstance];
}
- (FscActivityListPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscActivityListPb*) buildPartial {
  FscActivityListPb* returnMe = resultFscActivityListPb;
  self.resultFscActivityListPb = nil;
  return returnMe;
}
- (FscActivityListPbBuilder*) mergeFrom:(FscActivityListPb*) other {
  if (other == [FscActivityListPb defaultInstance]) {
    return self;
  }
  if (other.activityPbArray.count > 0) {
    if (resultFscActivityListPb.activityPbArray == nil) {
      resultFscActivityListPb.activityPbArray = [[NSMutableArray alloc] initWithArray:other.activityPbArray];
    } else {
      [resultFscActivityListPb.activityPbArray addObjectsFromArray:other.activityPbArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscActivityListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscActivityListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        FscActivityPbBuilder* subBuilder = [FscActivityPb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addActivityPb:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray *)activityPb {
  return resultFscActivityListPb.activityPbArray;
}
- (FscActivityPb*)activityPbAtIndex:(NSUInteger)index {
  return [resultFscActivityListPb activityPbAtIndex:index];
}
- (FscActivityListPbBuilder *)addActivityPb:(FscActivityPb*)value {
  if (resultFscActivityListPb.activityPbArray == nil) {
    resultFscActivityListPb.activityPbArray = [[NSMutableArray alloc]init];
  }
  [resultFscActivityListPb.activityPbArray addObject:value];
  return self;
}
- (FscActivityListPbBuilder *)setActivityPbArray:(NSArray *)array {
  resultFscActivityListPb.activityPbArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (FscActivityListPbBuilder *)clearActivityPb {
  resultFscActivityListPb.activityPbArray = nil;
  return self;
}
@end

@interface FscActivityPb ()
@property SInt64 id;
@property (strong) NSString* actName;
@property (strong) NSString* coverImg;
@property SInt64 modifiedDate;
@property SInt64 deadline;
@property SInt64 startTime;
@property SInt64 endTime;
@property (strong) NSString* desc;
@property SInt64 actNum;
@property SInt32 applyStatus;
@end

@implementation FscActivityPb

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasActName {
  return !!hasActName_;
}
- (void) setHasActName:(BOOL) _value_ {
  hasActName_ = !!_value_;
}
@synthesize actName;
- (BOOL) hasCoverImg {
  return !!hasCoverImg_;
}
- (void) setHasCoverImg:(BOOL) _value_ {
  hasCoverImg_ = !!_value_;
}
@synthesize coverImg;
- (BOOL) hasModifiedDate {
  return !!hasModifiedDate_;
}
- (void) setHasModifiedDate:(BOOL) _value_ {
  hasModifiedDate_ = !!_value_;
}
@synthesize modifiedDate;
- (BOOL) hasDeadline {
  return !!hasDeadline_;
}
- (void) setHasDeadline:(BOOL) _value_ {
  hasDeadline_ = !!_value_;
}
@synthesize deadline;
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
- (BOOL) hasDesc {
  return !!hasDesc_;
}
- (void) setHasDesc:(BOOL) _value_ {
  hasDesc_ = !!_value_;
}
@synthesize desc;
- (BOOL) hasActNum {
  return !!hasActNum_;
}
- (void) setHasActNum:(BOOL) _value_ {
  hasActNum_ = !!_value_;
}
@synthesize actNum;
- (BOOL) hasApplyStatus {
  return !!hasApplyStatus_;
}
- (void) setHasApplyStatus:(BOOL) _value_ {
  hasApplyStatus_ = !!_value_;
}
@synthesize applyStatus;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.actName = @"";
    self.coverImg = @"";
    self.modifiedDate = 0L;
    self.deadline = 0L;
    self.startTime = 0L;
    self.endTime = 0L;
    self.desc = @"";
    self.actNum = 0L;
    self.applyStatus = 0;
  }
  return self;
}
static FscActivityPb* defaultFscActivityPbInstance = nil;
+ (void) initialize {
  if (self == [FscActivityPb class]) {
    defaultFscActivityPbInstance = [[FscActivityPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscActivityPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscActivityPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeInt64:1 value:self.id];
  }
  if (self.hasActName) {
    [output writeString:2 value:self.actName];
  }
  if (self.hasCoverImg) {
    [output writeString:3 value:self.coverImg];
  }
  if (self.hasModifiedDate) {
    [output writeInt64:4 value:self.modifiedDate];
  }
  if (self.hasDeadline) {
    [output writeInt64:5 value:self.deadline];
  }
  if (self.hasStartTime) {
    [output writeInt64:6 value:self.startTime];
  }
  if (self.hasEndTime) {
    [output writeInt64:7 value:self.endTime];
  }
  if (self.hasDesc) {
    [output writeString:8 value:self.desc];
  }
  if (self.hasActNum) {
    [output writeInt64:9 value:self.actNum];
  }
  if (self.hasApplyStatus) {
    [output writeInt32:10 value:self.applyStatus];
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
  if (self.hasActName) {
    size_ += computeStringSize(2, self.actName);
  }
  if (self.hasCoverImg) {
    size_ += computeStringSize(3, self.coverImg);
  }
  if (self.hasModifiedDate) {
    size_ += computeInt64Size(4, self.modifiedDate);
  }
  if (self.hasDeadline) {
    size_ += computeInt64Size(5, self.deadline);
  }
  if (self.hasStartTime) {
    size_ += computeInt64Size(6, self.startTime);
  }
  if (self.hasEndTime) {
    size_ += computeInt64Size(7, self.endTime);
  }
  if (self.hasDesc) {
    size_ += computeStringSize(8, self.desc);
  }
  if (self.hasActNum) {
    size_ += computeInt64Size(9, self.actNum);
  }
  if (self.hasApplyStatus) {
    size_ += computeInt32Size(10, self.applyStatus);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscActivityPb*) parseFromData:(NSData*) data {
  return (FscActivityPb*)[[[FscActivityPb builder] mergeFromData:data] build];
}
+ (FscActivityPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityPb*)[[[FscActivityPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscActivityPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscActivityPb*)[[[FscActivityPb builder] mergeFromInputStream:input] build];
}
+ (FscActivityPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityPb*)[[[FscActivityPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscActivityPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscActivityPb*)[[[FscActivityPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscActivityPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityPb*)[[[FscActivityPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscActivityPbBuilder*) builder {
  return [[FscActivityPbBuilder alloc] init];
}
+ (FscActivityPbBuilder*) builderWithPrototype:(FscActivityPb*) prototype {
  return [[FscActivityPb builder] mergeFrom:prototype];
}
- (FscActivityPbBuilder*) builder {
  return [FscActivityPb builder];
}
- (FscActivityPbBuilder*) toBuilder {
  return [FscActivityPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasActName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"actName", self.actName];
  }
  if (self.hasCoverImg) {
    [output appendFormat:@"%@%@: %@\n", indent, @"coverImg", self.coverImg];
  }
  if (self.hasModifiedDate) {
    [output appendFormat:@"%@%@: %@\n", indent, @"modifiedDate", [NSNumber numberWithLongLong:self.modifiedDate]];
  }
  if (self.hasDeadline) {
    [output appendFormat:@"%@%@: %@\n", indent, @"deadline", [NSNumber numberWithLongLong:self.deadline]];
  }
  if (self.hasStartTime) {
    [output appendFormat:@"%@%@: %@\n", indent, @"startTime", [NSNumber numberWithLongLong:self.startTime]];
  }
  if (self.hasEndTime) {
    [output appendFormat:@"%@%@: %@\n", indent, @"endTime", [NSNumber numberWithLongLong:self.endTime]];
  }
  if (self.hasDesc) {
    [output appendFormat:@"%@%@: %@\n", indent, @"desc", self.desc];
  }
  if (self.hasActNum) {
    [output appendFormat:@"%@%@: %@\n", indent, @"actNum", [NSNumber numberWithLongLong:self.actNum]];
  }
  if (self.hasApplyStatus) {
    [output appendFormat:@"%@%@: %@\n", indent, @"applyStatus", [NSNumber numberWithInteger:self.applyStatus]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasActName) {
    [dictionary setObject: self.actName forKey: @"actName"];
  }
  if (self.hasCoverImg) {
    [dictionary setObject: self.coverImg forKey: @"coverImg"];
  }
  if (self.hasModifiedDate) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.modifiedDate] forKey: @"modifiedDate"];
  }
  if (self.hasDeadline) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.deadline] forKey: @"deadline"];
  }
  if (self.hasStartTime) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.startTime] forKey: @"startTime"];
  }
  if (self.hasEndTime) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.endTime] forKey: @"endTime"];
  }
  if (self.hasDesc) {
    [dictionary setObject: self.desc forKey: @"desc"];
  }
  if (self.hasActNum) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.actNum] forKey: @"actNum"];
  }
  if (self.hasApplyStatus) {
    [dictionary setObject: [NSNumber numberWithInteger:self.applyStatus] forKey: @"applyStatus"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscActivityPb class]]) {
    return NO;
  }
  FscActivityPb *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasActName == otherMessage.hasActName &&
      (!self.hasActName || [self.actName isEqual:otherMessage.actName]) &&
      self.hasCoverImg == otherMessage.hasCoverImg &&
      (!self.hasCoverImg || [self.coverImg isEqual:otherMessage.coverImg]) &&
      self.hasModifiedDate == otherMessage.hasModifiedDate &&
      (!self.hasModifiedDate || self.modifiedDate == otherMessage.modifiedDate) &&
      self.hasDeadline == otherMessage.hasDeadline &&
      (!self.hasDeadline || self.deadline == otherMessage.deadline) &&
      self.hasStartTime == otherMessage.hasStartTime &&
      (!self.hasStartTime || self.startTime == otherMessage.startTime) &&
      self.hasEndTime == otherMessage.hasEndTime &&
      (!self.hasEndTime || self.endTime == otherMessage.endTime) &&
      self.hasDesc == otherMessage.hasDesc &&
      (!self.hasDesc || [self.desc isEqual:otherMessage.desc]) &&
      self.hasActNum == otherMessage.hasActNum &&
      (!self.hasActNum || self.actNum == otherMessage.actNum) &&
      self.hasApplyStatus == otherMessage.hasApplyStatus &&
      (!self.hasApplyStatus || self.applyStatus == otherMessage.applyStatus) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasActName) {
    hashCode = hashCode * 31 + [self.actName hash];
  }
  if (self.hasCoverImg) {
    hashCode = hashCode * 31 + [self.coverImg hash];
  }
  if (self.hasModifiedDate) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.modifiedDate] hash];
  }
  if (self.hasDeadline) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.deadline] hash];
  }
  if (self.hasStartTime) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.startTime] hash];
  }
  if (self.hasEndTime) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.endTime] hash];
  }
  if (self.hasDesc) {
    hashCode = hashCode * 31 + [self.desc hash];
  }
  if (self.hasActNum) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.actNum] hash];
  }
  if (self.hasApplyStatus) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.applyStatus] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscActivityPbBuilder()
@property (strong) FscActivityPb* resultFscActivityPb;
@end

@implementation FscActivityPbBuilder
@synthesize resultFscActivityPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscActivityPb = [[FscActivityPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscActivityPb;
}
- (FscActivityPbBuilder*) clear {
  self.resultFscActivityPb = [[FscActivityPb alloc] init];
  return self;
}
- (FscActivityPbBuilder*) clone {
  return [FscActivityPb builderWithPrototype:resultFscActivityPb];
}
- (FscActivityPb*) defaultInstance {
  return [FscActivityPb defaultInstance];
}
- (FscActivityPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscActivityPb*) buildPartial {
  FscActivityPb* returnMe = resultFscActivityPb;
  self.resultFscActivityPb = nil;
  return returnMe;
}
- (FscActivityPbBuilder*) mergeFrom:(FscActivityPb*) other {
  if (other == [FscActivityPb defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasActName) {
    [self setActName:other.actName];
  }
  if (other.hasCoverImg) {
    [self setCoverImg:other.coverImg];
  }
  if (other.hasModifiedDate) {
    [self setModifiedDate:other.modifiedDate];
  }
  if (other.hasDeadline) {
    [self setDeadline:other.deadline];
  }
  if (other.hasStartTime) {
    [self setStartTime:other.startTime];
  }
  if (other.hasEndTime) {
    [self setEndTime:other.endTime];
  }
  if (other.hasDesc) {
    [self setDesc:other.desc];
  }
  if (other.hasActNum) {
    [self setActNum:other.actNum];
  }
  if (other.hasApplyStatus) {
    [self setApplyStatus:other.applyStatus];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscActivityPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscActivityPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setActName:[input readString]];
        break;
      }
      case 26: {
        [self setCoverImg:[input readString]];
        break;
      }
      case 32: {
        [self setModifiedDate:[input readInt64]];
        break;
      }
      case 40: {
        [self setDeadline:[input readInt64]];
        break;
      }
      case 48: {
        [self setStartTime:[input readInt64]];
        break;
      }
      case 56: {
        [self setEndTime:[input readInt64]];
        break;
      }
      case 66: {
        [self setDesc:[input readString]];
        break;
      }
      case 72: {
        [self setActNum:[input readInt64]];
        break;
      }
      case 80: {
        [self setApplyStatus:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultFscActivityPb.hasId;
}
- (SInt64) id {
  return resultFscActivityPb.id;
}
- (FscActivityPbBuilder*) setId:(SInt64) value {
  resultFscActivityPb.hasId = YES;
  resultFscActivityPb.id = value;
  return self;
}
- (FscActivityPbBuilder*) clearId {
  resultFscActivityPb.hasId = NO;
  resultFscActivityPb.id = 0L;
  return self;
}
- (BOOL) hasActName {
  return resultFscActivityPb.hasActName;
}
- (NSString*) actName {
  return resultFscActivityPb.actName;
}
- (FscActivityPbBuilder*) setActName:(NSString*) value {
  resultFscActivityPb.hasActName = YES;
  resultFscActivityPb.actName = value;
  return self;
}
- (FscActivityPbBuilder*) clearActName {
  resultFscActivityPb.hasActName = NO;
  resultFscActivityPb.actName = @"";
  return self;
}
- (BOOL) hasCoverImg {
  return resultFscActivityPb.hasCoverImg;
}
- (NSString*) coverImg {
  return resultFscActivityPb.coverImg;
}
- (FscActivityPbBuilder*) setCoverImg:(NSString*) value {
  resultFscActivityPb.hasCoverImg = YES;
  resultFscActivityPb.coverImg = value;
  return self;
}
- (FscActivityPbBuilder*) clearCoverImg {
  resultFscActivityPb.hasCoverImg = NO;
  resultFscActivityPb.coverImg = @"";
  return self;
}
- (BOOL) hasModifiedDate {
  return resultFscActivityPb.hasModifiedDate;
}
- (SInt64) modifiedDate {
  return resultFscActivityPb.modifiedDate;
}
- (FscActivityPbBuilder*) setModifiedDate:(SInt64) value {
  resultFscActivityPb.hasModifiedDate = YES;
  resultFscActivityPb.modifiedDate = value;
  return self;
}
- (FscActivityPbBuilder*) clearModifiedDate {
  resultFscActivityPb.hasModifiedDate = NO;
  resultFscActivityPb.modifiedDate = 0L;
  return self;
}
- (BOOL) hasDeadline {
  return resultFscActivityPb.hasDeadline;
}
- (SInt64) deadline {
  return resultFscActivityPb.deadline;
}
- (FscActivityPbBuilder*) setDeadline:(SInt64) value {
  resultFscActivityPb.hasDeadline = YES;
  resultFscActivityPb.deadline = value;
  return self;
}
- (FscActivityPbBuilder*) clearDeadline {
  resultFscActivityPb.hasDeadline = NO;
  resultFscActivityPb.deadline = 0L;
  return self;
}
- (BOOL) hasStartTime {
  return resultFscActivityPb.hasStartTime;
}
- (SInt64) startTime {
  return resultFscActivityPb.startTime;
}
- (FscActivityPbBuilder*) setStartTime:(SInt64) value {
  resultFscActivityPb.hasStartTime = YES;
  resultFscActivityPb.startTime = value;
  return self;
}
- (FscActivityPbBuilder*) clearStartTime {
  resultFscActivityPb.hasStartTime = NO;
  resultFscActivityPb.startTime = 0L;
  return self;
}
- (BOOL) hasEndTime {
  return resultFscActivityPb.hasEndTime;
}
- (SInt64) endTime {
  return resultFscActivityPb.endTime;
}
- (FscActivityPbBuilder*) setEndTime:(SInt64) value {
  resultFscActivityPb.hasEndTime = YES;
  resultFscActivityPb.endTime = value;
  return self;
}
- (FscActivityPbBuilder*) clearEndTime {
  resultFscActivityPb.hasEndTime = NO;
  resultFscActivityPb.endTime = 0L;
  return self;
}
- (BOOL) hasDesc {
  return resultFscActivityPb.hasDesc;
}
- (NSString*) desc {
  return resultFscActivityPb.desc;
}
- (FscActivityPbBuilder*) setDesc:(NSString*) value {
  resultFscActivityPb.hasDesc = YES;
  resultFscActivityPb.desc = value;
  return self;
}
- (FscActivityPbBuilder*) clearDesc {
  resultFscActivityPb.hasDesc = NO;
  resultFscActivityPb.desc = @"";
  return self;
}
- (BOOL) hasActNum {
  return resultFscActivityPb.hasActNum;
}
- (SInt64) actNum {
  return resultFscActivityPb.actNum;
}
- (FscActivityPbBuilder*) setActNum:(SInt64) value {
  resultFscActivityPb.hasActNum = YES;
  resultFscActivityPb.actNum = value;
  return self;
}
- (FscActivityPbBuilder*) clearActNum {
  resultFscActivityPb.hasActNum = NO;
  resultFscActivityPb.actNum = 0L;
  return self;
}
- (BOOL) hasApplyStatus {
  return resultFscActivityPb.hasApplyStatus;
}
- (SInt32) applyStatus {
  return resultFscActivityPb.applyStatus;
}
- (FscActivityPbBuilder*) setApplyStatus:(SInt32) value {
  resultFscActivityPb.hasApplyStatus = YES;
  resultFscActivityPb.applyStatus = value;
  return self;
}
- (FscActivityPbBuilder*) clearApplyStatus {
  resultFscActivityPb.hasApplyStatus = NO;
  resultFscActivityPb.applyStatus = 0;
  return self;
}
@end

@interface FscActivityApplyPb ()
@property SInt64 actId;
@end

@implementation FscActivityApplyPb

- (BOOL) hasActId {
  return !!hasActId_;
}
- (void) setHasActId:(BOOL) _value_ {
  hasActId_ = !!_value_;
}
@synthesize actId;
- (instancetype) init {
  if ((self = [super init])) {
    self.actId = 0L;
  }
  return self;
}
static FscActivityApplyPb* defaultFscActivityApplyPbInstance = nil;
+ (void) initialize {
  if (self == [FscActivityApplyPb class]) {
    defaultFscActivityApplyPbInstance = [[FscActivityApplyPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscActivityApplyPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscActivityApplyPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasActId) {
    [output writeInt64:1 value:self.actId];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasActId) {
    size_ += computeInt64Size(1, self.actId);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscActivityApplyPb*) parseFromData:(NSData*) data {
  return (FscActivityApplyPb*)[[[FscActivityApplyPb builder] mergeFromData:data] build];
}
+ (FscActivityApplyPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityApplyPb*)[[[FscActivityApplyPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscActivityApplyPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscActivityApplyPb*)[[[FscActivityApplyPb builder] mergeFromInputStream:input] build];
}
+ (FscActivityApplyPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityApplyPb*)[[[FscActivityApplyPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscActivityApplyPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscActivityApplyPb*)[[[FscActivityApplyPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscActivityApplyPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscActivityApplyPb*)[[[FscActivityApplyPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscActivityApplyPbBuilder*) builder {
  return [[FscActivityApplyPbBuilder alloc] init];
}
+ (FscActivityApplyPbBuilder*) builderWithPrototype:(FscActivityApplyPb*) prototype {
  return [[FscActivityApplyPb builder] mergeFrom:prototype];
}
- (FscActivityApplyPbBuilder*) builder {
  return [FscActivityApplyPb builder];
}
- (FscActivityApplyPbBuilder*) toBuilder {
  return [FscActivityApplyPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasActId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"actId", [NSNumber numberWithLongLong:self.actId]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasActId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.actId] forKey: @"actId"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscActivityApplyPb class]]) {
    return NO;
  }
  FscActivityApplyPb *otherMessage = other;
  return
      self.hasActId == otherMessage.hasActId &&
      (!self.hasActId || self.actId == otherMessage.actId) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasActId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.actId] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscActivityApplyPbBuilder()
@property (strong) FscActivityApplyPb* resultFscActivityApplyPb;
@end

@implementation FscActivityApplyPbBuilder
@synthesize resultFscActivityApplyPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscActivityApplyPb = [[FscActivityApplyPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscActivityApplyPb;
}
- (FscActivityApplyPbBuilder*) clear {
  self.resultFscActivityApplyPb = [[FscActivityApplyPb alloc] init];
  return self;
}
- (FscActivityApplyPbBuilder*) clone {
  return [FscActivityApplyPb builderWithPrototype:resultFscActivityApplyPb];
}
- (FscActivityApplyPb*) defaultInstance {
  return [FscActivityApplyPb defaultInstance];
}
- (FscActivityApplyPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscActivityApplyPb*) buildPartial {
  FscActivityApplyPb* returnMe = resultFscActivityApplyPb;
  self.resultFscActivityApplyPb = nil;
  return returnMe;
}
- (FscActivityApplyPbBuilder*) mergeFrom:(FscActivityApplyPb*) other {
  if (other == [FscActivityApplyPb defaultInstance]) {
    return self;
  }
  if (other.hasActId) {
    [self setActId:other.actId];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscActivityApplyPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscActivityApplyPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setActId:[input readInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasActId {
  return resultFscActivityApplyPb.hasActId;
}
- (SInt64) actId {
  return resultFscActivityApplyPb.actId;
}
- (FscActivityApplyPbBuilder*) setActId:(SInt64) value {
  resultFscActivityApplyPb.hasActId = YES;
  resultFscActivityApplyPb.actId = value;
  return self;
}
- (FscActivityApplyPbBuilder*) clearActId {
  resultFscActivityApplyPb.hasActId = NO;
  resultFscActivityApplyPb.actId = 0L;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
