// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscTeacher.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscTeacherRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscTeacherRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FscTeacherListPb ()
@property (strong) NSMutableArray * teacherPbArray;
@end

@implementation FscTeacherListPb

@synthesize teacherPbArray;
@dynamic teacherPb;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static FscTeacherListPb* defaultFscTeacherListPbInstance = nil;
+ (void) initialize {
  if (self == [FscTeacherListPb class]) {
    defaultFscTeacherListPbInstance = [[FscTeacherListPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscTeacherListPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscTeacherListPbInstance;
}
- (NSArray *)teacherPb {
  return teacherPbArray;
}
- (FscTeacherPb*)teacherPbAtIndex:(NSUInteger)index {
  return [teacherPbArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.teacherPbArray enumerateObjectsUsingBlock:^(FscTeacherPb *element, NSUInteger idx, BOOL *stop) {
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
  [self.teacherPbArray enumerateObjectsUsingBlock:^(FscTeacherPb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscTeacherListPb*) parseFromData:(NSData*) data {
  return (FscTeacherListPb*)[[[FscTeacherListPb builder] mergeFromData:data] build];
}
+ (FscTeacherListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTeacherListPb*)[[[FscTeacherListPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscTeacherListPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscTeacherListPb*)[[[FscTeacherListPb builder] mergeFromInputStream:input] build];
}
+ (FscTeacherListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTeacherListPb*)[[[FscTeacherListPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTeacherListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscTeacherListPb*)[[[FscTeacherListPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscTeacherListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTeacherListPb*)[[[FscTeacherListPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTeacherListPbBuilder*) builder {
  return [[FscTeacherListPbBuilder alloc] init];
}
+ (FscTeacherListPbBuilder*) builderWithPrototype:(FscTeacherListPb*) prototype {
  return [[FscTeacherListPb builder] mergeFrom:prototype];
}
- (FscTeacherListPbBuilder*) builder {
  return [FscTeacherListPb builder];
}
- (FscTeacherListPbBuilder*) toBuilder {
  return [FscTeacherListPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.teacherPbArray enumerateObjectsUsingBlock:^(FscTeacherPb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"teacherPb"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (FscTeacherPb* element in self.teacherPbArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"teacherPb"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscTeacherListPb class]]) {
    return NO;
  }
  FscTeacherListPb *otherMessage = other;
  return
      [self.teacherPbArray isEqualToArray:otherMessage.teacherPbArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.teacherPbArray enumerateObjectsUsingBlock:^(FscTeacherPb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscTeacherListPbBuilder()
@property (strong) FscTeacherListPb* resultFscTeacherListPb;
@end

@implementation FscTeacherListPbBuilder
@synthesize resultFscTeacherListPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscTeacherListPb = [[FscTeacherListPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscTeacherListPb;
}
- (FscTeacherListPbBuilder*) clear {
  self.resultFscTeacherListPb = [[FscTeacherListPb alloc] init];
  return self;
}
- (FscTeacherListPbBuilder*) clone {
  return [FscTeacherListPb builderWithPrototype:resultFscTeacherListPb];
}
- (FscTeacherListPb*) defaultInstance {
  return [FscTeacherListPb defaultInstance];
}
- (FscTeacherListPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscTeacherListPb*) buildPartial {
  FscTeacherListPb* returnMe = resultFscTeacherListPb;
  self.resultFscTeacherListPb = nil;
  return returnMe;
}
- (FscTeacherListPbBuilder*) mergeFrom:(FscTeacherListPb*) other {
  if (other == [FscTeacherListPb defaultInstance]) {
    return self;
  }
  if (other.teacherPbArray.count > 0) {
    if (resultFscTeacherListPb.teacherPbArray == nil) {
      resultFscTeacherListPb.teacherPbArray = [[NSMutableArray alloc] initWithArray:other.teacherPbArray];
    } else {
      [resultFscTeacherListPb.teacherPbArray addObjectsFromArray:other.teacherPbArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscTeacherListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscTeacherListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        FscTeacherPbBuilder* subBuilder = [FscTeacherPb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addTeacherPb:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray *)teacherPb {
  return resultFscTeacherListPb.teacherPbArray;
}
- (FscTeacherPb*)teacherPbAtIndex:(NSUInteger)index {
  return [resultFscTeacherListPb teacherPbAtIndex:index];
}
- (FscTeacherListPbBuilder *)addTeacherPb:(FscTeacherPb*)value {
  if (resultFscTeacherListPb.teacherPbArray == nil) {
    resultFscTeacherListPb.teacherPbArray = [[NSMutableArray alloc]init];
  }
  [resultFscTeacherListPb.teacherPbArray addObject:value];
  return self;
}
- (FscTeacherListPbBuilder *)setTeacherPbArray:(NSArray *)array {
  resultFscTeacherListPb.teacherPbArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (FscTeacherListPbBuilder *)clearTeacherPb {
  resultFscTeacherListPb.teacherPbArray = nil;
  return self;
}
@end

@interface FscTeacherPb ()
@property SInt64 id;
@property (strong) NSString* name;
@property (strong) NSString* portrait;
@property SInt32 gender;
@property SInt64 subjectId;
@property (strong) NSString* mobile;
@property SInt32 dataStatus;
@property SInt64 modifiedDate;
@end

@implementation FscTeacherPb

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
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
- (BOOL) hasGender {
  return !!hasGender_;
}
- (void) setHasGender:(BOOL) _value_ {
  hasGender_ = !!_value_;
}
@synthesize gender;
- (BOOL) hasSubjectId {
  return !!hasSubjectId_;
}
- (void) setHasSubjectId:(BOOL) _value_ {
  hasSubjectId_ = !!_value_;
}
@synthesize subjectId;
- (BOOL) hasMobile {
  return !!hasMobile_;
}
- (void) setHasMobile:(BOOL) _value_ {
  hasMobile_ = !!_value_;
}
@synthesize mobile;
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
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.name = @"";
    self.portrait = @"";
    self.gender = 0;
    self.subjectId = 0L;
    self.mobile = @"";
    self.dataStatus = 0;
    self.modifiedDate = 0L;
  }
  return self;
}
static FscTeacherPb* defaultFscTeacherPbInstance = nil;
+ (void) initialize {
  if (self == [FscTeacherPb class]) {
    defaultFscTeacherPbInstance = [[FscTeacherPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscTeacherPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscTeacherPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeInt64:1 value:self.id];
  }
  if (self.hasName) {
    [output writeString:2 value:self.name];
  }
  if (self.hasPortrait) {
    [output writeString:3 value:self.portrait];
  }
  if (self.hasGender) {
    [output writeInt32:4 value:self.gender];
  }
  if (self.hasSubjectId) {
    [output writeInt64:5 value:self.subjectId];
  }
  if (self.hasMobile) {
    [output writeString:6 value:self.mobile];
  }
  if (self.hasDataStatus) {
    [output writeInt32:7 value:self.dataStatus];
  }
  if (self.hasModifiedDate) {
    [output writeInt64:8 value:self.modifiedDate];
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
  if (self.hasName) {
    size_ += computeStringSize(2, self.name);
  }
  if (self.hasPortrait) {
    size_ += computeStringSize(3, self.portrait);
  }
  if (self.hasGender) {
    size_ += computeInt32Size(4, self.gender);
  }
  if (self.hasSubjectId) {
    size_ += computeInt64Size(5, self.subjectId);
  }
  if (self.hasMobile) {
    size_ += computeStringSize(6, self.mobile);
  }
  if (self.hasDataStatus) {
    size_ += computeInt32Size(7, self.dataStatus);
  }
  if (self.hasModifiedDate) {
    size_ += computeInt64Size(8, self.modifiedDate);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscTeacherPb*) parseFromData:(NSData*) data {
  return (FscTeacherPb*)[[[FscTeacherPb builder] mergeFromData:data] build];
}
+ (FscTeacherPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTeacherPb*)[[[FscTeacherPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscTeacherPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscTeacherPb*)[[[FscTeacherPb builder] mergeFromInputStream:input] build];
}
+ (FscTeacherPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTeacherPb*)[[[FscTeacherPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTeacherPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscTeacherPb*)[[[FscTeacherPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscTeacherPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTeacherPb*)[[[FscTeacherPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTeacherPbBuilder*) builder {
  return [[FscTeacherPbBuilder alloc] init];
}
+ (FscTeacherPbBuilder*) builderWithPrototype:(FscTeacherPb*) prototype {
  return [[FscTeacherPb builder] mergeFrom:prototype];
}
- (FscTeacherPbBuilder*) builder {
  return [FscTeacherPb builder];
}
- (FscTeacherPbBuilder*) toBuilder {
  return [FscTeacherPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"name", self.name];
  }
  if (self.hasPortrait) {
    [output appendFormat:@"%@%@: %@\n", indent, @"portrait", self.portrait];
  }
  if (self.hasGender) {
    [output appendFormat:@"%@%@: %@\n", indent, @"gender", [NSNumber numberWithInteger:self.gender]];
  }
  if (self.hasSubjectId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"subjectId", [NSNumber numberWithLongLong:self.subjectId]];
  }
  if (self.hasMobile) {
    [output appendFormat:@"%@%@: %@\n", indent, @"mobile", self.mobile];
  }
  if (self.hasDataStatus) {
    [output appendFormat:@"%@%@: %@\n", indent, @"dataStatus", [NSNumber numberWithInteger:self.dataStatus]];
  }
  if (self.hasModifiedDate) {
    [output appendFormat:@"%@%@: %@\n", indent, @"modifiedDate", [NSNumber numberWithLongLong:self.modifiedDate]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasName) {
    [dictionary setObject: self.name forKey: @"name"];
  }
  if (self.hasPortrait) {
    [dictionary setObject: self.portrait forKey: @"portrait"];
  }
  if (self.hasGender) {
    [dictionary setObject: [NSNumber numberWithInteger:self.gender] forKey: @"gender"];
  }
  if (self.hasSubjectId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.subjectId] forKey: @"subjectId"];
  }
  if (self.hasMobile) {
    [dictionary setObject: self.mobile forKey: @"mobile"];
  }
  if (self.hasDataStatus) {
    [dictionary setObject: [NSNumber numberWithInteger:self.dataStatus] forKey: @"dataStatus"];
  }
  if (self.hasModifiedDate) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.modifiedDate] forKey: @"modifiedDate"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscTeacherPb class]]) {
    return NO;
  }
  FscTeacherPb *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasName == otherMessage.hasName &&
      (!self.hasName || [self.name isEqual:otherMessage.name]) &&
      self.hasPortrait == otherMessage.hasPortrait &&
      (!self.hasPortrait || [self.portrait isEqual:otherMessage.portrait]) &&
      self.hasGender == otherMessage.hasGender &&
      (!self.hasGender || self.gender == otherMessage.gender) &&
      self.hasSubjectId == otherMessage.hasSubjectId &&
      (!self.hasSubjectId || self.subjectId == otherMessage.subjectId) &&
      self.hasMobile == otherMessage.hasMobile &&
      (!self.hasMobile || [self.mobile isEqual:otherMessage.mobile]) &&
      self.hasDataStatus == otherMessage.hasDataStatus &&
      (!self.hasDataStatus || self.dataStatus == otherMessage.dataStatus) &&
      self.hasModifiedDate == otherMessage.hasModifiedDate &&
      (!self.hasModifiedDate || self.modifiedDate == otherMessage.modifiedDate) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasName) {
    hashCode = hashCode * 31 + [self.name hash];
  }
  if (self.hasPortrait) {
    hashCode = hashCode * 31 + [self.portrait hash];
  }
  if (self.hasGender) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.gender] hash];
  }
  if (self.hasSubjectId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.subjectId] hash];
  }
  if (self.hasMobile) {
    hashCode = hashCode * 31 + [self.mobile hash];
  }
  if (self.hasDataStatus) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.dataStatus] hash];
  }
  if (self.hasModifiedDate) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.modifiedDate] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscTeacherPbBuilder()
@property (strong) FscTeacherPb* resultFscTeacherPb;
@end

@implementation FscTeacherPbBuilder
@synthesize resultFscTeacherPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscTeacherPb = [[FscTeacherPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscTeacherPb;
}
- (FscTeacherPbBuilder*) clear {
  self.resultFscTeacherPb = [[FscTeacherPb alloc] init];
  return self;
}
- (FscTeacherPbBuilder*) clone {
  return [FscTeacherPb builderWithPrototype:resultFscTeacherPb];
}
- (FscTeacherPb*) defaultInstance {
  return [FscTeacherPb defaultInstance];
}
- (FscTeacherPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscTeacherPb*) buildPartial {
  FscTeacherPb* returnMe = resultFscTeacherPb;
  self.resultFscTeacherPb = nil;
  return returnMe;
}
- (FscTeacherPbBuilder*) mergeFrom:(FscTeacherPb*) other {
  if (other == [FscTeacherPb defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasName) {
    [self setName:other.name];
  }
  if (other.hasPortrait) {
    [self setPortrait:other.portrait];
  }
  if (other.hasGender) {
    [self setGender:other.gender];
  }
  if (other.hasSubjectId) {
    [self setSubjectId:other.subjectId];
  }
  if (other.hasMobile) {
    [self setMobile:other.mobile];
  }
  if (other.hasDataStatus) {
    [self setDataStatus:other.dataStatus];
  }
  if (other.hasModifiedDate) {
    [self setModifiedDate:other.modifiedDate];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscTeacherPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscTeacherPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setName:[input readString]];
        break;
      }
      case 26: {
        [self setPortrait:[input readString]];
        break;
      }
      case 32: {
        [self setGender:[input readInt32]];
        break;
      }
      case 40: {
        [self setSubjectId:[input readInt64]];
        break;
      }
      case 50: {
        [self setMobile:[input readString]];
        break;
      }
      case 56: {
        [self setDataStatus:[input readInt32]];
        break;
      }
      case 64: {
        [self setModifiedDate:[input readInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultFscTeacherPb.hasId;
}
- (SInt64) id {
  return resultFscTeacherPb.id;
}
- (FscTeacherPbBuilder*) setId:(SInt64) value {
  resultFscTeacherPb.hasId = YES;
  resultFscTeacherPb.id = value;
  return self;
}
- (FscTeacherPbBuilder*) clearId {
  resultFscTeacherPb.hasId = NO;
  resultFscTeacherPb.id = 0L;
  return self;
}
- (BOOL) hasName {
  return resultFscTeacherPb.hasName;
}
- (NSString*) name {
  return resultFscTeacherPb.name;
}
- (FscTeacherPbBuilder*) setName:(NSString*) value {
  resultFscTeacherPb.hasName = YES;
  resultFscTeacherPb.name = value;
  return self;
}
- (FscTeacherPbBuilder*) clearName {
  resultFscTeacherPb.hasName = NO;
  resultFscTeacherPb.name = @"";
  return self;
}
- (BOOL) hasPortrait {
  return resultFscTeacherPb.hasPortrait;
}
- (NSString*) portrait {
  return resultFscTeacherPb.portrait;
}
- (FscTeacherPbBuilder*) setPortrait:(NSString*) value {
  resultFscTeacherPb.hasPortrait = YES;
  resultFscTeacherPb.portrait = value;
  return self;
}
- (FscTeacherPbBuilder*) clearPortrait {
  resultFscTeacherPb.hasPortrait = NO;
  resultFscTeacherPb.portrait = @"";
  return self;
}
- (BOOL) hasGender {
  return resultFscTeacherPb.hasGender;
}
- (SInt32) gender {
  return resultFscTeacherPb.gender;
}
- (FscTeacherPbBuilder*) setGender:(SInt32) value {
  resultFscTeacherPb.hasGender = YES;
  resultFscTeacherPb.gender = value;
  return self;
}
- (FscTeacherPbBuilder*) clearGender {
  resultFscTeacherPb.hasGender = NO;
  resultFscTeacherPb.gender = 0;
  return self;
}
- (BOOL) hasSubjectId {
  return resultFscTeacherPb.hasSubjectId;
}
- (SInt64) subjectId {
  return resultFscTeacherPb.subjectId;
}
- (FscTeacherPbBuilder*) setSubjectId:(SInt64) value {
  resultFscTeacherPb.hasSubjectId = YES;
  resultFscTeacherPb.subjectId = value;
  return self;
}
- (FscTeacherPbBuilder*) clearSubjectId {
  resultFscTeacherPb.hasSubjectId = NO;
  resultFscTeacherPb.subjectId = 0L;
  return self;
}
- (BOOL) hasMobile {
  return resultFscTeacherPb.hasMobile;
}
- (NSString*) mobile {
  return resultFscTeacherPb.mobile;
}
- (FscTeacherPbBuilder*) setMobile:(NSString*) value {
  resultFscTeacherPb.hasMobile = YES;
  resultFscTeacherPb.mobile = value;
  return self;
}
- (FscTeacherPbBuilder*) clearMobile {
  resultFscTeacherPb.hasMobile = NO;
  resultFscTeacherPb.mobile = @"";
  return self;
}
- (BOOL) hasDataStatus {
  return resultFscTeacherPb.hasDataStatus;
}
- (SInt32) dataStatus {
  return resultFscTeacherPb.dataStatus;
}
- (FscTeacherPbBuilder*) setDataStatus:(SInt32) value {
  resultFscTeacherPb.hasDataStatus = YES;
  resultFscTeacherPb.dataStatus = value;
  return self;
}
- (FscTeacherPbBuilder*) clearDataStatus {
  resultFscTeacherPb.hasDataStatus = NO;
  resultFscTeacherPb.dataStatus = 0;
  return self;
}
- (BOOL) hasModifiedDate {
  return resultFscTeacherPb.hasModifiedDate;
}
- (SInt64) modifiedDate {
  return resultFscTeacherPb.modifiedDate;
}
- (FscTeacherPbBuilder*) setModifiedDate:(SInt64) value {
  resultFscTeacherPb.hasModifiedDate = YES;
  resultFscTeacherPb.modifiedDate = value;
  return self;
}
- (FscTeacherPbBuilder*) clearModifiedDate {
  resultFscTeacherPb.hasModifiedDate = NO;
  resultFscTeacherPb.modifiedDate = 0L;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
