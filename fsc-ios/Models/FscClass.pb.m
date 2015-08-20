// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscClass.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscClassRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscClassRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FscClassPbList ()
@property (strong) NSMutableArray * fscClassPbArray;
@end

@implementation FscClassPbList

@synthesize fscClassPbArray;
@dynamic fscClassPb;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static FscClassPbList* defaultFscClassPbListInstance = nil;
+ (void) initialize {
  if (self == [FscClassPbList class]) {
    defaultFscClassPbListInstance = [[FscClassPbList alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscClassPbListInstance;
}
- (instancetype) defaultInstance {
  return defaultFscClassPbListInstance;
}
- (NSArray *)fscClassPb {
  return fscClassPbArray;
}
- (FscClassPb*)fscClassPbAtIndex:(NSUInteger)index {
  return [fscClassPbArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.fscClassPbArray enumerateObjectsUsingBlock:^(FscClassPb *element, NSUInteger idx, BOOL *stop) {
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
  [self.fscClassPbArray enumerateObjectsUsingBlock:^(FscClassPb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscClassPbList*) parseFromData:(NSData*) data {
  return (FscClassPbList*)[[[FscClassPbList builder] mergeFromData:data] build];
}
+ (FscClassPbList*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscClassPbList*)[[[FscClassPbList builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscClassPbList*) parseFromInputStream:(NSInputStream*) input {
  return (FscClassPbList*)[[[FscClassPbList builder] mergeFromInputStream:input] build];
}
+ (FscClassPbList*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscClassPbList*)[[[FscClassPbList builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscClassPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscClassPbList*)[[[FscClassPbList builder] mergeFromCodedInputStream:input] build];
}
+ (FscClassPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscClassPbList*)[[[FscClassPbList builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscClassPbListBuilder*) builder {
  return [[FscClassPbListBuilder alloc] init];
}
+ (FscClassPbListBuilder*) builderWithPrototype:(FscClassPbList*) prototype {
  return [[FscClassPbList builder] mergeFrom:prototype];
}
- (FscClassPbListBuilder*) builder {
  return [FscClassPbList builder];
}
- (FscClassPbListBuilder*) toBuilder {
  return [FscClassPbList builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.fscClassPbArray enumerateObjectsUsingBlock:^(FscClassPb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"fscClassPb"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (FscClassPb* element in self.fscClassPbArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"fscClassPb"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscClassPbList class]]) {
    return NO;
  }
  FscClassPbList *otherMessage = other;
  return
      [self.fscClassPbArray isEqualToArray:otherMessage.fscClassPbArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.fscClassPbArray enumerateObjectsUsingBlock:^(FscClassPb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscClassPbListBuilder()
@property (strong) FscClassPbList* resultFscClassPbList;
@end

@implementation FscClassPbListBuilder
@synthesize resultFscClassPbList;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscClassPbList = [[FscClassPbList alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscClassPbList;
}
- (FscClassPbListBuilder*) clear {
  self.resultFscClassPbList = [[FscClassPbList alloc] init];
  return self;
}
- (FscClassPbListBuilder*) clone {
  return [FscClassPbList builderWithPrototype:resultFscClassPbList];
}
- (FscClassPbList*) defaultInstance {
  return [FscClassPbList defaultInstance];
}
- (FscClassPbList*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscClassPbList*) buildPartial {
  FscClassPbList* returnMe = resultFscClassPbList;
  self.resultFscClassPbList = nil;
  return returnMe;
}
- (FscClassPbListBuilder*) mergeFrom:(FscClassPbList*) other {
  if (other == [FscClassPbList defaultInstance]) {
    return self;
  }
  if (other.fscClassPbArray.count > 0) {
    if (resultFscClassPbList.fscClassPbArray == nil) {
      resultFscClassPbList.fscClassPbArray = [[NSMutableArray alloc] initWithArray:other.fscClassPbArray];
    } else {
      [resultFscClassPbList.fscClassPbArray addObjectsFromArray:other.fscClassPbArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscClassPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscClassPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        FscClassPbBuilder* subBuilder = [FscClassPb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addFscClassPb:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray *)fscClassPb {
  return resultFscClassPbList.fscClassPbArray;
}
- (FscClassPb*)fscClassPbAtIndex:(NSUInteger)index {
  return [resultFscClassPbList fscClassPbAtIndex:index];
}
- (FscClassPbListBuilder *)addFscClassPb:(FscClassPb*)value {
  if (resultFscClassPbList.fscClassPbArray == nil) {
    resultFscClassPbList.fscClassPbArray = [[NSMutableArray alloc]init];
  }
  [resultFscClassPbList.fscClassPbArray addObject:value];
  return self;
}
- (FscClassPbListBuilder *)setFscClassPbArray:(NSArray *)array {
  resultFscClassPbList.fscClassPbArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (FscClassPbListBuilder *)clearFscClassPb {
  resultFscClassPbList.fscClassPbArray = nil;
  return self;
}
@end

@interface FscClassPb ()
@property SInt64 id;
@property (strong) NSString* className;
@property SInt64 gradeId;
@property (strong) NSString* gradeName;
@property (strong) NSString* monitorUrl;
@property SInt64 year;
@property SInt32 semester;
@end

@implementation FscClassPb

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasClassName {
  return !!hasClassName_;
}
- (void) setHasClassName:(BOOL) _value_ {
  hasClassName_ = !!_value_;
}
@synthesize className;
- (BOOL) hasGradeId {
  return !!hasGradeId_;
}
- (void) setHasGradeId:(BOOL) _value_ {
  hasGradeId_ = !!_value_;
}
@synthesize gradeId;
- (BOOL) hasGradeName {
  return !!hasGradeName_;
}
- (void) setHasGradeName:(BOOL) _value_ {
  hasGradeName_ = !!_value_;
}
@synthesize gradeName;
- (BOOL) hasMonitorUrl {
  return !!hasMonitorUrl_;
}
- (void) setHasMonitorUrl:(BOOL) _value_ {
  hasMonitorUrl_ = !!_value_;
}
@synthesize monitorUrl;
- (BOOL) hasYear {
  return !!hasYear_;
}
- (void) setHasYear:(BOOL) _value_ {
  hasYear_ = !!_value_;
}
@synthesize year;
- (BOOL) hasSemester {
  return !!hasSemester_;
}
- (void) setHasSemester:(BOOL) _value_ {
  hasSemester_ = !!_value_;
}
@synthesize semester;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.className = @"";
    self.gradeId = 0L;
    self.gradeName = @"";
    self.monitorUrl = @"";
    self.year = 0L;
    self.semester = 0;
  }
  return self;
}
static FscClassPb* defaultFscClassPbInstance = nil;
+ (void) initialize {
  if (self == [FscClassPb class]) {
    defaultFscClassPbInstance = [[FscClassPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscClassPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscClassPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeInt64:1 value:self.id];
  }
  if (self.hasClassName) {
    [output writeString:2 value:self.className];
  }
  if (self.hasGradeId) {
    [output writeInt64:3 value:self.gradeId];
  }
  if (self.hasGradeName) {
    [output writeString:4 value:self.gradeName];
  }
  if (self.hasMonitorUrl) {
    [output writeString:5 value:self.monitorUrl];
  }
  if (self.hasYear) {
    [output writeInt64:6 value:self.year];
  }
  if (self.hasSemester) {
    [output writeInt32:7 value:self.semester];
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
  if (self.hasClassName) {
    size_ += computeStringSize(2, self.className);
  }
  if (self.hasGradeId) {
    size_ += computeInt64Size(3, self.gradeId);
  }
  if (self.hasGradeName) {
    size_ += computeStringSize(4, self.gradeName);
  }
  if (self.hasMonitorUrl) {
    size_ += computeStringSize(5, self.monitorUrl);
  }
  if (self.hasYear) {
    size_ += computeInt64Size(6, self.year);
  }
  if (self.hasSemester) {
    size_ += computeInt32Size(7, self.semester);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscClassPb*) parseFromData:(NSData*) data {
  return (FscClassPb*)[[[FscClassPb builder] mergeFromData:data] build];
}
+ (FscClassPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscClassPb*)[[[FscClassPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscClassPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscClassPb*)[[[FscClassPb builder] mergeFromInputStream:input] build];
}
+ (FscClassPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscClassPb*)[[[FscClassPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscClassPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscClassPb*)[[[FscClassPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscClassPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscClassPb*)[[[FscClassPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscClassPbBuilder*) builder {
  return [[FscClassPbBuilder alloc] init];
}
+ (FscClassPbBuilder*) builderWithPrototype:(FscClassPb*) prototype {
  return [[FscClassPb builder] mergeFrom:prototype];
}
- (FscClassPbBuilder*) builder {
  return [FscClassPb builder];
}
- (FscClassPbBuilder*) toBuilder {
  return [FscClassPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasClassName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"className", self.className];
  }
  if (self.hasGradeId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"gradeId", [NSNumber numberWithLongLong:self.gradeId]];
  }
  if (self.hasGradeName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"gradeName", self.gradeName];
  }
  if (self.hasMonitorUrl) {
    [output appendFormat:@"%@%@: %@\n", indent, @"monitorUrl", self.monitorUrl];
  }
  if (self.hasYear) {
    [output appendFormat:@"%@%@: %@\n", indent, @"year", [NSNumber numberWithLongLong:self.year]];
  }
  if (self.hasSemester) {
    [output appendFormat:@"%@%@: %@\n", indent, @"semester", [NSNumber numberWithInteger:self.semester]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasClassName) {
    [dictionary setObject: self.className forKey: @"className"];
  }
  if (self.hasGradeId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.gradeId] forKey: @"gradeId"];
  }
  if (self.hasGradeName) {
    [dictionary setObject: self.gradeName forKey: @"gradeName"];
  }
  if (self.hasMonitorUrl) {
    [dictionary setObject: self.monitorUrl forKey: @"monitorUrl"];
  }
  if (self.hasYear) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.year] forKey: @"year"];
  }
  if (self.hasSemester) {
    [dictionary setObject: [NSNumber numberWithInteger:self.semester] forKey: @"semester"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscClassPb class]]) {
    return NO;
  }
  FscClassPb *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasClassName == otherMessage.hasClassName &&
      (!self.hasClassName || [self.className isEqual:otherMessage.className]) &&
      self.hasGradeId == otherMessage.hasGradeId &&
      (!self.hasGradeId || self.gradeId == otherMessage.gradeId) &&
      self.hasGradeName == otherMessage.hasGradeName &&
      (!self.hasGradeName || [self.gradeName isEqual:otherMessage.gradeName]) &&
      self.hasMonitorUrl == otherMessage.hasMonitorUrl &&
      (!self.hasMonitorUrl || [self.monitorUrl isEqual:otherMessage.monitorUrl]) &&
      self.hasYear == otherMessage.hasYear &&
      (!self.hasYear || self.year == otherMessage.year) &&
      self.hasSemester == otherMessage.hasSemester &&
      (!self.hasSemester || self.semester == otherMessage.semester) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasClassName) {
    hashCode = hashCode * 31 + [self.className hash];
  }
  if (self.hasGradeId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.gradeId] hash];
  }
  if (self.hasGradeName) {
    hashCode = hashCode * 31 + [self.gradeName hash];
  }
  if (self.hasMonitorUrl) {
    hashCode = hashCode * 31 + [self.monitorUrl hash];
  }
  if (self.hasYear) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.year] hash];
  }
  if (self.hasSemester) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.semester] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscClassPbBuilder()
@property (strong) FscClassPb* resultFscClassPb;
@end

@implementation FscClassPbBuilder
@synthesize resultFscClassPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscClassPb = [[FscClassPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscClassPb;
}
- (FscClassPbBuilder*) clear {
  self.resultFscClassPb = [[FscClassPb alloc] init];
  return self;
}
- (FscClassPbBuilder*) clone {
  return [FscClassPb builderWithPrototype:resultFscClassPb];
}
- (FscClassPb*) defaultInstance {
  return [FscClassPb defaultInstance];
}
- (FscClassPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscClassPb*) buildPartial {
  FscClassPb* returnMe = resultFscClassPb;
  self.resultFscClassPb = nil;
  return returnMe;
}
- (FscClassPbBuilder*) mergeFrom:(FscClassPb*) other {
  if (other == [FscClassPb defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasClassName) {
    [self setClassName:other.className];
  }
  if (other.hasGradeId) {
    [self setGradeId:other.gradeId];
  }
  if (other.hasGradeName) {
    [self setGradeName:other.gradeName];
  }
  if (other.hasMonitorUrl) {
    [self setMonitorUrl:other.monitorUrl];
  }
  if (other.hasYear) {
    [self setYear:other.year];
  }
  if (other.hasSemester) {
    [self setSemester:other.semester];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscClassPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscClassPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setClassName:[input readString]];
        break;
      }
      case 24: {
        [self setGradeId:[input readInt64]];
        break;
      }
      case 34: {
        [self setGradeName:[input readString]];
        break;
      }
      case 42: {
        [self setMonitorUrl:[input readString]];
        break;
      }
      case 48: {
        [self setYear:[input readInt64]];
        break;
      }
      case 56: {
        [self setSemester:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultFscClassPb.hasId;
}
- (SInt64) id {
  return resultFscClassPb.id;
}
- (FscClassPbBuilder*) setId:(SInt64) value {
  resultFscClassPb.hasId = YES;
  resultFscClassPb.id = value;
  return self;
}
- (FscClassPbBuilder*) clearId {
  resultFscClassPb.hasId = NO;
  resultFscClassPb.id = 0L;
  return self;
}
- (BOOL) hasClassName {
  return resultFscClassPb.hasClassName;
}
- (NSString*) className {
  return resultFscClassPb.className;
}
- (FscClassPbBuilder*) setClassName:(NSString*) value {
  resultFscClassPb.hasClassName = YES;
  resultFscClassPb.className = value;
  return self;
}
- (FscClassPbBuilder*) clearClassName {
  resultFscClassPb.hasClassName = NO;
  resultFscClassPb.className = @"";
  return self;
}
- (BOOL) hasGradeId {
  return resultFscClassPb.hasGradeId;
}
- (SInt64) gradeId {
  return resultFscClassPb.gradeId;
}
- (FscClassPbBuilder*) setGradeId:(SInt64) value {
  resultFscClassPb.hasGradeId = YES;
  resultFscClassPb.gradeId = value;
  return self;
}
- (FscClassPbBuilder*) clearGradeId {
  resultFscClassPb.hasGradeId = NO;
  resultFscClassPb.gradeId = 0L;
  return self;
}
- (BOOL) hasGradeName {
  return resultFscClassPb.hasGradeName;
}
- (NSString*) gradeName {
  return resultFscClassPb.gradeName;
}
- (FscClassPbBuilder*) setGradeName:(NSString*) value {
  resultFscClassPb.hasGradeName = YES;
  resultFscClassPb.gradeName = value;
  return self;
}
- (FscClassPbBuilder*) clearGradeName {
  resultFscClassPb.hasGradeName = NO;
  resultFscClassPb.gradeName = @"";
  return self;
}
- (BOOL) hasMonitorUrl {
  return resultFscClassPb.hasMonitorUrl;
}
- (NSString*) monitorUrl {
  return resultFscClassPb.monitorUrl;
}
- (FscClassPbBuilder*) setMonitorUrl:(NSString*) value {
  resultFscClassPb.hasMonitorUrl = YES;
  resultFscClassPb.monitorUrl = value;
  return self;
}
- (FscClassPbBuilder*) clearMonitorUrl {
  resultFscClassPb.hasMonitorUrl = NO;
  resultFscClassPb.monitorUrl = @"";
  return self;
}
- (BOOL) hasYear {
  return resultFscClassPb.hasYear;
}
- (SInt64) year {
  return resultFscClassPb.year;
}
- (FscClassPbBuilder*) setYear:(SInt64) value {
  resultFscClassPb.hasYear = YES;
  resultFscClassPb.year = value;
  return self;
}
- (FscClassPbBuilder*) clearYear {
  resultFscClassPb.hasYear = NO;
  resultFscClassPb.year = 0L;
  return self;
}
- (BOOL) hasSemester {
  return resultFscClassPb.hasSemester;
}
- (SInt32) semester {
  return resultFscClassPb.semester;
}
- (FscClassPbBuilder*) setSemester:(SInt32) value {
  resultFscClassPb.hasSemester = YES;
  resultFscClassPb.semester = value;
  return self;
}
- (FscClassPbBuilder*) clearSemester {
  resultFscClassPb.hasSemester = NO;
  resultFscClassPb.semester = 0;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
