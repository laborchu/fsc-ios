// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscScore.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscScoreRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscScoreRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface ScoreListPb ()
@property (strong) NSMutableArray * scoreArray;
@property (strong) NSMutableArray * scoreStuArray;
@end

@implementation ScoreListPb

@synthesize scoreArray;
@dynamic score;
@synthesize scoreStuArray;
@dynamic scoreStu;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static ScoreListPb* defaultScoreListPbInstance = nil;
+ (void) initialize {
  if (self == [ScoreListPb class]) {
    defaultScoreListPbInstance = [[ScoreListPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultScoreListPbInstance;
}
- (instancetype) defaultInstance {
  return defaultScoreListPbInstance;
}
- (NSArray *)score {
  return scoreArray;
}
- (ScorePb*)scoreAtIndex:(NSUInteger)index {
  return [scoreArray objectAtIndex:index];
}
- (NSArray *)scoreStu {
  return scoreStuArray;
}
- (ScoreStuPb*)scoreStuAtIndex:(NSUInteger)index {
  return [scoreStuArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.scoreArray enumerateObjectsUsingBlock:^(ScorePb *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:1 value:element];
  }];
  [self.scoreStuArray enumerateObjectsUsingBlock:^(ScoreStuPb *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:2 value:element];
  }];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  [self.scoreArray enumerateObjectsUsingBlock:^(ScorePb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  [self.scoreStuArray enumerateObjectsUsingBlock:^(ScoreStuPb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(2, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ScoreListPb*) parseFromData:(NSData*) data {
  return (ScoreListPb*)[[[ScoreListPb builder] mergeFromData:data] build];
}
+ (ScoreListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScoreListPb*)[[[ScoreListPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ScoreListPb*) parseFromInputStream:(NSInputStream*) input {
  return (ScoreListPb*)[[[ScoreListPb builder] mergeFromInputStream:input] build];
}
+ (ScoreListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScoreListPb*)[[[ScoreListPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ScoreListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ScoreListPb*)[[[ScoreListPb builder] mergeFromCodedInputStream:input] build];
}
+ (ScoreListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScoreListPb*)[[[ScoreListPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ScoreListPbBuilder*) builder {
  return [[ScoreListPbBuilder alloc] init];
}
+ (ScoreListPbBuilder*) builderWithPrototype:(ScoreListPb*) prototype {
  return [[ScoreListPb builder] mergeFrom:prototype];
}
- (ScoreListPbBuilder*) builder {
  return [ScoreListPb builder];
}
- (ScoreListPbBuilder*) toBuilder {
  return [ScoreListPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.scoreArray enumerateObjectsUsingBlock:^(ScorePb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"score"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.scoreStuArray enumerateObjectsUsingBlock:^(ScoreStuPb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"scoreStu"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (ScorePb* element in self.scoreArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"score"];
  }
  for (ScoreStuPb* element in self.scoreStuArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"scoreStu"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ScoreListPb class]]) {
    return NO;
  }
  ScoreListPb *otherMessage = other;
  return
      [self.scoreArray isEqualToArray:otherMessage.scoreArray] &&
      [self.scoreStuArray isEqualToArray:otherMessage.scoreStuArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.scoreArray enumerateObjectsUsingBlock:^(ScorePb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  [self.scoreStuArray enumerateObjectsUsingBlock:^(ScoreStuPb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ScoreListPbBuilder()
@property (strong) ScoreListPb* resultScoreListPb;
@end

@implementation ScoreListPbBuilder
@synthesize resultScoreListPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultScoreListPb = [[ScoreListPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultScoreListPb;
}
- (ScoreListPbBuilder*) clear {
  self.resultScoreListPb = [[ScoreListPb alloc] init];
  return self;
}
- (ScoreListPbBuilder*) clone {
  return [ScoreListPb builderWithPrototype:resultScoreListPb];
}
- (ScoreListPb*) defaultInstance {
  return [ScoreListPb defaultInstance];
}
- (ScoreListPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ScoreListPb*) buildPartial {
  ScoreListPb* returnMe = resultScoreListPb;
  self.resultScoreListPb = nil;
  return returnMe;
}
- (ScoreListPbBuilder*) mergeFrom:(ScoreListPb*) other {
  if (other == [ScoreListPb defaultInstance]) {
    return self;
  }
  if (other.scoreArray.count > 0) {
    if (resultScoreListPb.scoreArray == nil) {
      resultScoreListPb.scoreArray = [[NSMutableArray alloc] initWithArray:other.scoreArray];
    } else {
      [resultScoreListPb.scoreArray addObjectsFromArray:other.scoreArray];
    }
  }
  if (other.scoreStuArray.count > 0) {
    if (resultScoreListPb.scoreStuArray == nil) {
      resultScoreListPb.scoreStuArray = [[NSMutableArray alloc] initWithArray:other.scoreStuArray];
    } else {
      [resultScoreListPb.scoreStuArray addObjectsFromArray:other.scoreStuArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ScoreListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ScoreListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        ScorePbBuilder* subBuilder = [ScorePb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addScore:[subBuilder buildPartial]];
        break;
      }
      case 18: {
        ScoreStuPbBuilder* subBuilder = [ScoreStuPb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addScoreStu:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray *)score {
  return resultScoreListPb.scoreArray;
}
- (ScorePb*)scoreAtIndex:(NSUInteger)index {
  return [resultScoreListPb scoreAtIndex:index];
}
- (ScoreListPbBuilder *)addScore:(ScorePb*)value {
  if (resultScoreListPb.scoreArray == nil) {
    resultScoreListPb.scoreArray = [[NSMutableArray alloc]init];
  }
  [resultScoreListPb.scoreArray addObject:value];
  return self;
}
- (ScoreListPbBuilder *)setScoreArray:(NSArray *)array {
  resultScoreListPb.scoreArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (ScoreListPbBuilder *)clearScore {
  resultScoreListPb.scoreArray = nil;
  return self;
}
- (NSMutableArray *)scoreStu {
  return resultScoreListPb.scoreStuArray;
}
- (ScoreStuPb*)scoreStuAtIndex:(NSUInteger)index {
  return [resultScoreListPb scoreStuAtIndex:index];
}
- (ScoreListPbBuilder *)addScoreStu:(ScoreStuPb*)value {
  if (resultScoreListPb.scoreStuArray == nil) {
    resultScoreListPb.scoreStuArray = [[NSMutableArray alloc]init];
  }
  [resultScoreListPb.scoreStuArray addObject:value];
  return self;
}
- (ScoreListPbBuilder *)setScoreStuArray:(NSArray *)array {
  resultScoreListPb.scoreStuArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (ScoreListPbBuilder *)clearScoreStu {
  resultScoreListPb.scoreStuArray = nil;
  return self;
}
@end

@interface ScorePb ()
@property SInt64 id;
@property SInt64 schoolId;
@property SInt64 subjectId;
@property (strong) NSString* examName;
@property SInt64 studentId;
@property SInt32 score;
@property SInt64 modifiedDate;
@property SInt32 dataStatus;
@end

@implementation ScorePb

- (BOOL) hasId {
  return !!hasId_;
}
- (void) setHasId:(BOOL) _value_ {
  hasId_ = !!_value_;
}
@synthesize id;
- (BOOL) hasSchoolId {
  return !!hasSchoolId_;
}
- (void) setHasSchoolId:(BOOL) _value_ {
  hasSchoolId_ = !!_value_;
}
@synthesize schoolId;
- (BOOL) hasSubjectId {
  return !!hasSubjectId_;
}
- (void) setHasSubjectId:(BOOL) _value_ {
  hasSubjectId_ = !!_value_;
}
@synthesize subjectId;
- (BOOL) hasExamName {
  return !!hasExamName_;
}
- (void) setHasExamName:(BOOL) _value_ {
  hasExamName_ = !!_value_;
}
@synthesize examName;
- (BOOL) hasStudentId {
  return !!hasStudentId_;
}
- (void) setHasStudentId:(BOOL) _value_ {
  hasStudentId_ = !!_value_;
}
@synthesize studentId;
- (BOOL) hasScore {
  return !!hasScore_;
}
- (void) setHasScore:(BOOL) _value_ {
  hasScore_ = !!_value_;
}
@synthesize score;
- (BOOL) hasModifiedDate {
  return !!hasModifiedDate_;
}
- (void) setHasModifiedDate:(BOOL) _value_ {
  hasModifiedDate_ = !!_value_;
}
@synthesize modifiedDate;
- (BOOL) hasDataStatus {
  return !!hasDataStatus_;
}
- (void) setHasDataStatus:(BOOL) _value_ {
  hasDataStatus_ = !!_value_;
}
@synthesize dataStatus;
- (instancetype) init {
  if ((self = [super init])) {
    self.id = 0L;
    self.schoolId = 0L;
    self.subjectId = 0L;
    self.examName = @"";
    self.studentId = 0L;
    self.score = 0;
    self.modifiedDate = 0L;
    self.dataStatus = 0;
  }
  return self;
}
static ScorePb* defaultScorePbInstance = nil;
+ (void) initialize {
  if (self == [ScorePb class]) {
    defaultScorePbInstance = [[ScorePb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultScorePbInstance;
}
- (instancetype) defaultInstance {
  return defaultScorePbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasId) {
    [output writeInt64:1 value:self.id];
  }
  if (self.hasSchoolId) {
    [output writeInt64:2 value:self.schoolId];
  }
  if (self.hasSubjectId) {
    [output writeInt64:3 value:self.subjectId];
  }
  if (self.hasExamName) {
    [output writeString:4 value:self.examName];
  }
  if (self.hasStudentId) {
    [output writeInt64:5 value:self.studentId];
  }
  if (self.hasScore) {
    [output writeInt32:6 value:self.score];
  }
  if (self.hasModifiedDate) {
    [output writeInt64:7 value:self.modifiedDate];
  }
  if (self.hasDataStatus) {
    [output writeInt32:8 value:self.dataStatus];
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
  if (self.hasSchoolId) {
    size_ += computeInt64Size(2, self.schoolId);
  }
  if (self.hasSubjectId) {
    size_ += computeInt64Size(3, self.subjectId);
  }
  if (self.hasExamName) {
    size_ += computeStringSize(4, self.examName);
  }
  if (self.hasStudentId) {
    size_ += computeInt64Size(5, self.studentId);
  }
  if (self.hasScore) {
    size_ += computeInt32Size(6, self.score);
  }
  if (self.hasModifiedDate) {
    size_ += computeInt64Size(7, self.modifiedDate);
  }
  if (self.hasDataStatus) {
    size_ += computeInt32Size(8, self.dataStatus);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ScorePb*) parseFromData:(NSData*) data {
  return (ScorePb*)[[[ScorePb builder] mergeFromData:data] build];
}
+ (ScorePb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScorePb*)[[[ScorePb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ScorePb*) parseFromInputStream:(NSInputStream*) input {
  return (ScorePb*)[[[ScorePb builder] mergeFromInputStream:input] build];
}
+ (ScorePb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScorePb*)[[[ScorePb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ScorePb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ScorePb*)[[[ScorePb builder] mergeFromCodedInputStream:input] build];
}
+ (ScorePb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScorePb*)[[[ScorePb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ScorePbBuilder*) builder {
  return [[ScorePbBuilder alloc] init];
}
+ (ScorePbBuilder*) builderWithPrototype:(ScorePb*) prototype {
  return [[ScorePb builder] mergeFrom:prototype];
}
- (ScorePbBuilder*) builder {
  return [ScorePb builder];
}
- (ScorePbBuilder*) toBuilder {
  return [ScorePb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"id", [NSNumber numberWithLongLong:self.id]];
  }
  if (self.hasSchoolId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"schoolId", [NSNumber numberWithLongLong:self.schoolId]];
  }
  if (self.hasSubjectId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"subjectId", [NSNumber numberWithLongLong:self.subjectId]];
  }
  if (self.hasExamName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"examName", self.examName];
  }
  if (self.hasStudentId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"studentId", [NSNumber numberWithLongLong:self.studentId]];
  }
  if (self.hasScore) {
    [output appendFormat:@"%@%@: %@\n", indent, @"score", [NSNumber numberWithInteger:self.score]];
  }
  if (self.hasModifiedDate) {
    [output appendFormat:@"%@%@: %@\n", indent, @"modifiedDate", [NSNumber numberWithLongLong:self.modifiedDate]];
  }
  if (self.hasDataStatus) {
    [output appendFormat:@"%@%@: %@\n", indent, @"dataStatus", [NSNumber numberWithInteger:self.dataStatus]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.id] forKey: @"id"];
  }
  if (self.hasSchoolId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.schoolId] forKey: @"schoolId"];
  }
  if (self.hasSubjectId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.subjectId] forKey: @"subjectId"];
  }
  if (self.hasExamName) {
    [dictionary setObject: self.examName forKey: @"examName"];
  }
  if (self.hasStudentId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.studentId] forKey: @"studentId"];
  }
  if (self.hasScore) {
    [dictionary setObject: [NSNumber numberWithInteger:self.score] forKey: @"score"];
  }
  if (self.hasModifiedDate) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.modifiedDate] forKey: @"modifiedDate"];
  }
  if (self.hasDataStatus) {
    [dictionary setObject: [NSNumber numberWithInteger:self.dataStatus] forKey: @"dataStatus"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ScorePb class]]) {
    return NO;
  }
  ScorePb *otherMessage = other;
  return
      self.hasId == otherMessage.hasId &&
      (!self.hasId || self.id == otherMessage.id) &&
      self.hasSchoolId == otherMessage.hasSchoolId &&
      (!self.hasSchoolId || self.schoolId == otherMessage.schoolId) &&
      self.hasSubjectId == otherMessage.hasSubjectId &&
      (!self.hasSubjectId || self.subjectId == otherMessage.subjectId) &&
      self.hasExamName == otherMessage.hasExamName &&
      (!self.hasExamName || [self.examName isEqual:otherMessage.examName]) &&
      self.hasStudentId == otherMessage.hasStudentId &&
      (!self.hasStudentId || self.studentId == otherMessage.studentId) &&
      self.hasScore == otherMessage.hasScore &&
      (!self.hasScore || self.score == otherMessage.score) &&
      self.hasModifiedDate == otherMessage.hasModifiedDate &&
      (!self.hasModifiedDate || self.modifiedDate == otherMessage.modifiedDate) &&
      self.hasDataStatus == otherMessage.hasDataStatus &&
      (!self.hasDataStatus || self.dataStatus == otherMessage.dataStatus) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.id] hash];
  }
  if (self.hasSchoolId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.schoolId] hash];
  }
  if (self.hasSubjectId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.subjectId] hash];
  }
  if (self.hasExamName) {
    hashCode = hashCode * 31 + [self.examName hash];
  }
  if (self.hasStudentId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.studentId] hash];
  }
  if (self.hasScore) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.score] hash];
  }
  if (self.hasModifiedDate) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.modifiedDate] hash];
  }
  if (self.hasDataStatus) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.dataStatus] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ScorePbBuilder()
@property (strong) ScorePb* resultScorePb;
@end

@implementation ScorePbBuilder
@synthesize resultScorePb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultScorePb = [[ScorePb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultScorePb;
}
- (ScorePbBuilder*) clear {
  self.resultScorePb = [[ScorePb alloc] init];
  return self;
}
- (ScorePbBuilder*) clone {
  return [ScorePb builderWithPrototype:resultScorePb];
}
- (ScorePb*) defaultInstance {
  return [ScorePb defaultInstance];
}
- (ScorePb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ScorePb*) buildPartial {
  ScorePb* returnMe = resultScorePb;
  self.resultScorePb = nil;
  return returnMe;
}
- (ScorePbBuilder*) mergeFrom:(ScorePb*) other {
  if (other == [ScorePb defaultInstance]) {
    return self;
  }
  if (other.hasId) {
    [self setId:other.id];
  }
  if (other.hasSchoolId) {
    [self setSchoolId:other.schoolId];
  }
  if (other.hasSubjectId) {
    [self setSubjectId:other.subjectId];
  }
  if (other.hasExamName) {
    [self setExamName:other.examName];
  }
  if (other.hasStudentId) {
    [self setStudentId:other.studentId];
  }
  if (other.hasScore) {
    [self setScore:other.score];
  }
  if (other.hasModifiedDate) {
    [self setModifiedDate:other.modifiedDate];
  }
  if (other.hasDataStatus) {
    [self setDataStatus:other.dataStatus];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ScorePbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ScorePbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setSchoolId:[input readInt64]];
        break;
      }
      case 24: {
        [self setSubjectId:[input readInt64]];
        break;
      }
      case 34: {
        [self setExamName:[input readString]];
        break;
      }
      case 40: {
        [self setStudentId:[input readInt64]];
        break;
      }
      case 48: {
        [self setScore:[input readInt32]];
        break;
      }
      case 56: {
        [self setModifiedDate:[input readInt64]];
        break;
      }
      case 64: {
        [self setDataStatus:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasId {
  return resultScorePb.hasId;
}
- (SInt64) id {
  return resultScorePb.id;
}
- (ScorePbBuilder*) setId:(SInt64) value {
  resultScorePb.hasId = YES;
  resultScorePb.id = value;
  return self;
}
- (ScorePbBuilder*) clearId {
  resultScorePb.hasId = NO;
  resultScorePb.id = 0L;
  return self;
}
- (BOOL) hasSchoolId {
  return resultScorePb.hasSchoolId;
}
- (SInt64) schoolId {
  return resultScorePb.schoolId;
}
- (ScorePbBuilder*) setSchoolId:(SInt64) value {
  resultScorePb.hasSchoolId = YES;
  resultScorePb.schoolId = value;
  return self;
}
- (ScorePbBuilder*) clearSchoolId {
  resultScorePb.hasSchoolId = NO;
  resultScorePb.schoolId = 0L;
  return self;
}
- (BOOL) hasSubjectId {
  return resultScorePb.hasSubjectId;
}
- (SInt64) subjectId {
  return resultScorePb.subjectId;
}
- (ScorePbBuilder*) setSubjectId:(SInt64) value {
  resultScorePb.hasSubjectId = YES;
  resultScorePb.subjectId = value;
  return self;
}
- (ScorePbBuilder*) clearSubjectId {
  resultScorePb.hasSubjectId = NO;
  resultScorePb.subjectId = 0L;
  return self;
}
- (BOOL) hasExamName {
  return resultScorePb.hasExamName;
}
- (NSString*) examName {
  return resultScorePb.examName;
}
- (ScorePbBuilder*) setExamName:(NSString*) value {
  resultScorePb.hasExamName = YES;
  resultScorePb.examName = value;
  return self;
}
- (ScorePbBuilder*) clearExamName {
  resultScorePb.hasExamName = NO;
  resultScorePb.examName = @"";
  return self;
}
- (BOOL) hasStudentId {
  return resultScorePb.hasStudentId;
}
- (SInt64) studentId {
  return resultScorePb.studentId;
}
- (ScorePbBuilder*) setStudentId:(SInt64) value {
  resultScorePb.hasStudentId = YES;
  resultScorePb.studentId = value;
  return self;
}
- (ScorePbBuilder*) clearStudentId {
  resultScorePb.hasStudentId = NO;
  resultScorePb.studentId = 0L;
  return self;
}
- (BOOL) hasScore {
  return resultScorePb.hasScore;
}
- (SInt32) score {
  return resultScorePb.score;
}
- (ScorePbBuilder*) setScore:(SInt32) value {
  resultScorePb.hasScore = YES;
  resultScorePb.score = value;
  return self;
}
- (ScorePbBuilder*) clearScore {
  resultScorePb.hasScore = NO;
  resultScorePb.score = 0;
  return self;
}
- (BOOL) hasModifiedDate {
  return resultScorePb.hasModifiedDate;
}
- (SInt64) modifiedDate {
  return resultScorePb.modifiedDate;
}
- (ScorePbBuilder*) setModifiedDate:(SInt64) value {
  resultScorePb.hasModifiedDate = YES;
  resultScorePb.modifiedDate = value;
  return self;
}
- (ScorePbBuilder*) clearModifiedDate {
  resultScorePb.hasModifiedDate = NO;
  resultScorePb.modifiedDate = 0L;
  return self;
}
- (BOOL) hasDataStatus {
  return resultScorePb.hasDataStatus;
}
- (SInt32) dataStatus {
  return resultScorePb.dataStatus;
}
- (ScorePbBuilder*) setDataStatus:(SInt32) value {
  resultScorePb.hasDataStatus = YES;
  resultScorePb.dataStatus = value;
  return self;
}
- (ScorePbBuilder*) clearDataStatus {
  resultScorePb.hasDataStatus = NO;
  resultScorePb.dataStatus = 0;
  return self;
}
@end

@interface ScoreStuPb ()
@property SInt64 scoreId;
@property SInt64 studentId;
@property SInt64 score;
@property (strong) NSString* studentName;
@property SInt64 classId;
@end

@implementation ScoreStuPb

- (BOOL) hasScoreId {
  return !!hasScoreId_;
}
- (void) setHasScoreId:(BOOL) _value_ {
  hasScoreId_ = !!_value_;
}
@synthesize scoreId;
- (BOOL) hasStudentId {
  return !!hasStudentId_;
}
- (void) setHasStudentId:(BOOL) _value_ {
  hasStudentId_ = !!_value_;
}
@synthesize studentId;
- (BOOL) hasScore {
  return !!hasScore_;
}
- (void) setHasScore:(BOOL) _value_ {
  hasScore_ = !!_value_;
}
@synthesize score;
- (BOOL) hasStudentName {
  return !!hasStudentName_;
}
- (void) setHasStudentName:(BOOL) _value_ {
  hasStudentName_ = !!_value_;
}
@synthesize studentName;
- (BOOL) hasClassId {
  return !!hasClassId_;
}
- (void) setHasClassId:(BOOL) _value_ {
  hasClassId_ = !!_value_;
}
@synthesize classId;
- (instancetype) init {
  if ((self = [super init])) {
    self.scoreId = 0L;
    self.studentId = 0L;
    self.score = 0L;
    self.studentName = @"";
    self.classId = 0L;
  }
  return self;
}
static ScoreStuPb* defaultScoreStuPbInstance = nil;
+ (void) initialize {
  if (self == [ScoreStuPb class]) {
    defaultScoreStuPbInstance = [[ScoreStuPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultScoreStuPbInstance;
}
- (instancetype) defaultInstance {
  return defaultScoreStuPbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasScoreId) {
    [output writeInt64:1 value:self.scoreId];
  }
  if (self.hasStudentId) {
    [output writeInt64:2 value:self.studentId];
  }
  if (self.hasScore) {
    [output writeInt64:3 value:self.score];
  }
  if (self.hasStudentName) {
    [output writeString:4 value:self.studentName];
  }
  if (self.hasClassId) {
    [output writeInt64:5 value:self.classId];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasScoreId) {
    size_ += computeInt64Size(1, self.scoreId);
  }
  if (self.hasStudentId) {
    size_ += computeInt64Size(2, self.studentId);
  }
  if (self.hasScore) {
    size_ += computeInt64Size(3, self.score);
  }
  if (self.hasStudentName) {
    size_ += computeStringSize(4, self.studentName);
  }
  if (self.hasClassId) {
    size_ += computeInt64Size(5, self.classId);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ScoreStuPb*) parseFromData:(NSData*) data {
  return (ScoreStuPb*)[[[ScoreStuPb builder] mergeFromData:data] build];
}
+ (ScoreStuPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScoreStuPb*)[[[ScoreStuPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ScoreStuPb*) parseFromInputStream:(NSInputStream*) input {
  return (ScoreStuPb*)[[[ScoreStuPb builder] mergeFromInputStream:input] build];
}
+ (ScoreStuPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScoreStuPb*)[[[ScoreStuPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ScoreStuPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ScoreStuPb*)[[[ScoreStuPb builder] mergeFromCodedInputStream:input] build];
}
+ (ScoreStuPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ScoreStuPb*)[[[ScoreStuPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ScoreStuPbBuilder*) builder {
  return [[ScoreStuPbBuilder alloc] init];
}
+ (ScoreStuPbBuilder*) builderWithPrototype:(ScoreStuPb*) prototype {
  return [[ScoreStuPb builder] mergeFrom:prototype];
}
- (ScoreStuPbBuilder*) builder {
  return [ScoreStuPb builder];
}
- (ScoreStuPbBuilder*) toBuilder {
  return [ScoreStuPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasScoreId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"scoreId", [NSNumber numberWithLongLong:self.scoreId]];
  }
  if (self.hasStudentId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"studentId", [NSNumber numberWithLongLong:self.studentId]];
  }
  if (self.hasScore) {
    [output appendFormat:@"%@%@: %@\n", indent, @"score", [NSNumber numberWithLongLong:self.score]];
  }
  if (self.hasStudentName) {
    [output appendFormat:@"%@%@: %@\n", indent, @"studentName", self.studentName];
  }
  if (self.hasClassId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"classId", [NSNumber numberWithLongLong:self.classId]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasScoreId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.scoreId] forKey: @"scoreId"];
  }
  if (self.hasStudentId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.studentId] forKey: @"studentId"];
  }
  if (self.hasScore) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.score] forKey: @"score"];
  }
  if (self.hasStudentName) {
    [dictionary setObject: self.studentName forKey: @"studentName"];
  }
  if (self.hasClassId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.classId] forKey: @"classId"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ScoreStuPb class]]) {
    return NO;
  }
  ScoreStuPb *otherMessage = other;
  return
      self.hasScoreId == otherMessage.hasScoreId &&
      (!self.hasScoreId || self.scoreId == otherMessage.scoreId) &&
      self.hasStudentId == otherMessage.hasStudentId &&
      (!self.hasStudentId || self.studentId == otherMessage.studentId) &&
      self.hasScore == otherMessage.hasScore &&
      (!self.hasScore || self.score == otherMessage.score) &&
      self.hasStudentName == otherMessage.hasStudentName &&
      (!self.hasStudentName || [self.studentName isEqual:otherMessage.studentName]) &&
      self.hasClassId == otherMessage.hasClassId &&
      (!self.hasClassId || self.classId == otherMessage.classId) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasScoreId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.scoreId] hash];
  }
  if (self.hasStudentId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.studentId] hash];
  }
  if (self.hasScore) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.score] hash];
  }
  if (self.hasStudentName) {
    hashCode = hashCode * 31 + [self.studentName hash];
  }
  if (self.hasClassId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.classId] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ScoreStuPbBuilder()
@property (strong) ScoreStuPb* resultScoreStuPb;
@end

@implementation ScoreStuPbBuilder
@synthesize resultScoreStuPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultScoreStuPb = [[ScoreStuPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultScoreStuPb;
}
- (ScoreStuPbBuilder*) clear {
  self.resultScoreStuPb = [[ScoreStuPb alloc] init];
  return self;
}
- (ScoreStuPbBuilder*) clone {
  return [ScoreStuPb builderWithPrototype:resultScoreStuPb];
}
- (ScoreStuPb*) defaultInstance {
  return [ScoreStuPb defaultInstance];
}
- (ScoreStuPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ScoreStuPb*) buildPartial {
  ScoreStuPb* returnMe = resultScoreStuPb;
  self.resultScoreStuPb = nil;
  return returnMe;
}
- (ScoreStuPbBuilder*) mergeFrom:(ScoreStuPb*) other {
  if (other == [ScoreStuPb defaultInstance]) {
    return self;
  }
  if (other.hasScoreId) {
    [self setScoreId:other.scoreId];
  }
  if (other.hasStudentId) {
    [self setStudentId:other.studentId];
  }
  if (other.hasScore) {
    [self setScore:other.score];
  }
  if (other.hasStudentName) {
    [self setStudentName:other.studentName];
  }
  if (other.hasClassId) {
    [self setClassId:other.classId];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ScoreStuPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ScoreStuPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setScoreId:[input readInt64]];
        break;
      }
      case 16: {
        [self setStudentId:[input readInt64]];
        break;
      }
      case 24: {
        [self setScore:[input readInt64]];
        break;
      }
      case 34: {
        [self setStudentName:[input readString]];
        break;
      }
      case 40: {
        [self setClassId:[input readInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasScoreId {
  return resultScoreStuPb.hasScoreId;
}
- (SInt64) scoreId {
  return resultScoreStuPb.scoreId;
}
- (ScoreStuPbBuilder*) setScoreId:(SInt64) value {
  resultScoreStuPb.hasScoreId = YES;
  resultScoreStuPb.scoreId = value;
  return self;
}
- (ScoreStuPbBuilder*) clearScoreId {
  resultScoreStuPb.hasScoreId = NO;
  resultScoreStuPb.scoreId = 0L;
  return self;
}
- (BOOL) hasStudentId {
  return resultScoreStuPb.hasStudentId;
}
- (SInt64) studentId {
  return resultScoreStuPb.studentId;
}
- (ScoreStuPbBuilder*) setStudentId:(SInt64) value {
  resultScoreStuPb.hasStudentId = YES;
  resultScoreStuPb.studentId = value;
  return self;
}
- (ScoreStuPbBuilder*) clearStudentId {
  resultScoreStuPb.hasStudentId = NO;
  resultScoreStuPb.studentId = 0L;
  return self;
}
- (BOOL) hasScore {
  return resultScoreStuPb.hasScore;
}
- (SInt64) score {
  return resultScoreStuPb.score;
}
- (ScoreStuPbBuilder*) setScore:(SInt64) value {
  resultScoreStuPb.hasScore = YES;
  resultScoreStuPb.score = value;
  return self;
}
- (ScoreStuPbBuilder*) clearScore {
  resultScoreStuPb.hasScore = NO;
  resultScoreStuPb.score = 0L;
  return self;
}
- (BOOL) hasStudentName {
  return resultScoreStuPb.hasStudentName;
}
- (NSString*) studentName {
  return resultScoreStuPb.studentName;
}
- (ScoreStuPbBuilder*) setStudentName:(NSString*) value {
  resultScoreStuPb.hasStudentName = YES;
  resultScoreStuPb.studentName = value;
  return self;
}
- (ScoreStuPbBuilder*) clearStudentName {
  resultScoreStuPb.hasStudentName = NO;
  resultScoreStuPb.studentName = @"";
  return self;
}
- (BOOL) hasClassId {
  return resultScoreStuPb.hasClassId;
}
- (SInt64) classId {
  return resultScoreStuPb.classId;
}
- (ScoreStuPbBuilder*) setClassId:(SInt64) value {
  resultScoreStuPb.hasClassId = YES;
  resultScoreStuPb.classId = value;
  return self;
}
- (ScoreStuPbBuilder*) clearClassId {
  resultScoreStuPb.hasClassId = NO;
  resultScoreStuPb.classId = 0L;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
