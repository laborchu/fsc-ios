// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "FscTimetable.pb.h"
// @@protoc_insertion_point(imports)

@implementation FscTimetableRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [FscTimetableRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface FscTimetableListPb ()
@property (strong) NSMutableArray * timetablePbArray;
@end

@implementation FscTimetableListPb

@synthesize timetablePbArray;
@dynamic timetablePb;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static FscTimetableListPb* defaultFscTimetableListPbInstance = nil;
+ (void) initialize {
  if (self == [FscTimetableListPb class]) {
    defaultFscTimetableListPbInstance = [[FscTimetableListPb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscTimetableListPbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscTimetableListPbInstance;
}
- (NSArray *)timetablePb {
  return timetablePbArray;
}
- (FscTimetablePb*)timetablePbAtIndex:(NSUInteger)index {
  return [timetablePbArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.timetablePbArray enumerateObjectsUsingBlock:^(FscTimetablePb *element, NSUInteger idx, BOOL *stop) {
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
  [self.timetablePbArray enumerateObjectsUsingBlock:^(FscTimetablePb *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscTimetableListPb*) parseFromData:(NSData*) data {
  return (FscTimetableListPb*)[[[FscTimetableListPb builder] mergeFromData:data] build];
}
+ (FscTimetableListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTimetableListPb*)[[[FscTimetableListPb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscTimetableListPb*) parseFromInputStream:(NSInputStream*) input {
  return (FscTimetableListPb*)[[[FscTimetableListPb builder] mergeFromInputStream:input] build];
}
+ (FscTimetableListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTimetableListPb*)[[[FscTimetableListPb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTimetableListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscTimetableListPb*)[[[FscTimetableListPb builder] mergeFromCodedInputStream:input] build];
}
+ (FscTimetableListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTimetableListPb*)[[[FscTimetableListPb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTimetableListPbBuilder*) builder {
  return [[FscTimetableListPbBuilder alloc] init];
}
+ (FscTimetableListPbBuilder*) builderWithPrototype:(FscTimetableListPb*) prototype {
  return [[FscTimetableListPb builder] mergeFrom:prototype];
}
- (FscTimetableListPbBuilder*) builder {
  return [FscTimetableListPb builder];
}
- (FscTimetableListPbBuilder*) toBuilder {
  return [FscTimetableListPb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.timetablePbArray enumerateObjectsUsingBlock:^(FscTimetablePb *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"timetablePb"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (FscTimetablePb* element in self.timetablePbArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"timetablePb"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscTimetableListPb class]]) {
    return NO;
  }
  FscTimetableListPb *otherMessage = other;
  return
      [self.timetablePbArray isEqualToArray:otherMessage.timetablePbArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.timetablePbArray enumerateObjectsUsingBlock:^(FscTimetablePb *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscTimetableListPbBuilder()
@property (strong) FscTimetableListPb* resultFscTimetableListPb;
@end

@implementation FscTimetableListPbBuilder
@synthesize resultFscTimetableListPb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscTimetableListPb = [[FscTimetableListPb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscTimetableListPb;
}
- (FscTimetableListPbBuilder*) clear {
  self.resultFscTimetableListPb = [[FscTimetableListPb alloc] init];
  return self;
}
- (FscTimetableListPbBuilder*) clone {
  return [FscTimetableListPb builderWithPrototype:resultFscTimetableListPb];
}
- (FscTimetableListPb*) defaultInstance {
  return [FscTimetableListPb defaultInstance];
}
- (FscTimetableListPb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscTimetableListPb*) buildPartial {
  FscTimetableListPb* returnMe = resultFscTimetableListPb;
  self.resultFscTimetableListPb = nil;
  return returnMe;
}
- (FscTimetableListPbBuilder*) mergeFrom:(FscTimetableListPb*) other {
  if (other == [FscTimetableListPb defaultInstance]) {
    return self;
  }
  if (other.timetablePbArray.count > 0) {
    if (resultFscTimetableListPb.timetablePbArray == nil) {
      resultFscTimetableListPb.timetablePbArray = [[NSMutableArray alloc] initWithArray:other.timetablePbArray];
    } else {
      [resultFscTimetableListPb.timetablePbArray addObjectsFromArray:other.timetablePbArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscTimetableListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscTimetableListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        FscTimetablePbBuilder* subBuilder = [FscTimetablePb builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addTimetablePb:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray *)timetablePb {
  return resultFscTimetableListPb.timetablePbArray;
}
- (FscTimetablePb*)timetablePbAtIndex:(NSUInteger)index {
  return [resultFscTimetableListPb timetablePbAtIndex:index];
}
- (FscTimetableListPbBuilder *)addTimetablePb:(FscTimetablePb*)value {
  if (resultFscTimetableListPb.timetablePbArray == nil) {
    resultFscTimetableListPb.timetablePbArray = [[NSMutableArray alloc]init];
  }
  [resultFscTimetableListPb.timetablePbArray addObject:value];
  return self;
}
- (FscTimetableListPbBuilder *)setTimetablePbArray:(NSArray *)array {
  resultFscTimetableListPb.timetablePbArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (FscTimetableListPbBuilder *)clearTimetablePb {
  resultFscTimetableListPb.timetablePbArray = nil;
  return self;
}
@end

@interface FscTimetablePb ()
@property SInt64 year;
@property SInt32 semester;
@property SInt64 classId;
@property SInt32 time;
@property SInt32 period;
@property SInt64 schoolId;
@property SInt64 monSubject;
@property SInt64 tueSubject;
@property SInt64 wedSubject;
@property SInt64 thuSubject;
@property SInt64 friSubject;
@property SInt64 satSubject;
@property SInt64 sunSubject;
@end

@implementation FscTimetablePb

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
- (BOOL) hasClassId {
  return !!hasClassId_;
}
- (void) setHasClassId:(BOOL) _value_ {
  hasClassId_ = !!_value_;
}
@synthesize classId;
- (BOOL) hasTime {
  return !!hasTime_;
}
- (void) setHasTime:(BOOL) _value_ {
  hasTime_ = !!_value_;
}
@synthesize time;
- (BOOL) hasPeriod {
  return !!hasPeriod_;
}
- (void) setHasPeriod:(BOOL) _value_ {
  hasPeriod_ = !!_value_;
}
@synthesize period;
- (BOOL) hasSchoolId {
  return !!hasSchoolId_;
}
- (void) setHasSchoolId:(BOOL) _value_ {
  hasSchoolId_ = !!_value_;
}
@synthesize schoolId;
- (BOOL) hasMonSubject {
  return !!hasMonSubject_;
}
- (void) setHasMonSubject:(BOOL) _value_ {
  hasMonSubject_ = !!_value_;
}
@synthesize monSubject;
- (BOOL) hasTueSubject {
  return !!hasTueSubject_;
}
- (void) setHasTueSubject:(BOOL) _value_ {
  hasTueSubject_ = !!_value_;
}
@synthesize tueSubject;
- (BOOL) hasWedSubject {
  return !!hasWedSubject_;
}
- (void) setHasWedSubject:(BOOL) _value_ {
  hasWedSubject_ = !!_value_;
}
@synthesize wedSubject;
- (BOOL) hasThuSubject {
  return !!hasThuSubject_;
}
- (void) setHasThuSubject:(BOOL) _value_ {
  hasThuSubject_ = !!_value_;
}
@synthesize thuSubject;
- (BOOL) hasFriSubject {
  return !!hasFriSubject_;
}
- (void) setHasFriSubject:(BOOL) _value_ {
  hasFriSubject_ = !!_value_;
}
@synthesize friSubject;
- (BOOL) hasSatSubject {
  return !!hasSatSubject_;
}
- (void) setHasSatSubject:(BOOL) _value_ {
  hasSatSubject_ = !!_value_;
}
@synthesize satSubject;
- (BOOL) hasSunSubject {
  return !!hasSunSubject_;
}
- (void) setHasSunSubject:(BOOL) _value_ {
  hasSunSubject_ = !!_value_;
}
@synthesize sunSubject;
- (instancetype) init {
  if ((self = [super init])) {
    self.year = 0L;
    self.semester = 0;
    self.classId = 0L;
    self.time = 0;
    self.period = 0;
    self.schoolId = 0L;
    self.monSubject = 0L;
    self.tueSubject = 0L;
    self.wedSubject = 0L;
    self.thuSubject = 0L;
    self.friSubject = 0L;
    self.satSubject = 0L;
    self.sunSubject = 0L;
  }
  return self;
}
static FscTimetablePb* defaultFscTimetablePbInstance = nil;
+ (void) initialize {
  if (self == [FscTimetablePb class]) {
    defaultFscTimetablePbInstance = [[FscTimetablePb alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultFscTimetablePbInstance;
}
- (instancetype) defaultInstance {
  return defaultFscTimetablePbInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasYear) {
    [output writeInt64:1 value:self.year];
  }
  if (self.hasSemester) {
    [output writeInt32:2 value:self.semester];
  }
  if (self.hasClassId) {
    [output writeInt64:3 value:self.classId];
  }
  if (self.hasTime) {
    [output writeInt32:4 value:self.time];
  }
  if (self.hasPeriod) {
    [output writeInt32:5 value:self.period];
  }
  if (self.hasSchoolId) {
    [output writeInt64:6 value:self.schoolId];
  }
  if (self.hasMonSubject) {
    [output writeInt64:7 value:self.monSubject];
  }
  if (self.hasTueSubject) {
    [output writeInt64:8 value:self.tueSubject];
  }
  if (self.hasWedSubject) {
    [output writeInt64:9 value:self.wedSubject];
  }
  if (self.hasThuSubject) {
    [output writeInt64:10 value:self.thuSubject];
  }
  if (self.hasFriSubject) {
    [output writeInt64:11 value:self.friSubject];
  }
  if (self.hasSatSubject) {
    [output writeInt64:12 value:self.satSubject];
  }
  if (self.hasSunSubject) {
    [output writeInt64:13 value:self.sunSubject];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasYear) {
    size_ += computeInt64Size(1, self.year);
  }
  if (self.hasSemester) {
    size_ += computeInt32Size(2, self.semester);
  }
  if (self.hasClassId) {
    size_ += computeInt64Size(3, self.classId);
  }
  if (self.hasTime) {
    size_ += computeInt32Size(4, self.time);
  }
  if (self.hasPeriod) {
    size_ += computeInt32Size(5, self.period);
  }
  if (self.hasSchoolId) {
    size_ += computeInt64Size(6, self.schoolId);
  }
  if (self.hasMonSubject) {
    size_ += computeInt64Size(7, self.monSubject);
  }
  if (self.hasTueSubject) {
    size_ += computeInt64Size(8, self.tueSubject);
  }
  if (self.hasWedSubject) {
    size_ += computeInt64Size(9, self.wedSubject);
  }
  if (self.hasThuSubject) {
    size_ += computeInt64Size(10, self.thuSubject);
  }
  if (self.hasFriSubject) {
    size_ += computeInt64Size(11, self.friSubject);
  }
  if (self.hasSatSubject) {
    size_ += computeInt64Size(12, self.satSubject);
  }
  if (self.hasSunSubject) {
    size_ += computeInt64Size(13, self.sunSubject);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (FscTimetablePb*) parseFromData:(NSData*) data {
  return (FscTimetablePb*)[[[FscTimetablePb builder] mergeFromData:data] build];
}
+ (FscTimetablePb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTimetablePb*)[[[FscTimetablePb builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (FscTimetablePb*) parseFromInputStream:(NSInputStream*) input {
  return (FscTimetablePb*)[[[FscTimetablePb builder] mergeFromInputStream:input] build];
}
+ (FscTimetablePb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTimetablePb*)[[[FscTimetablePb builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTimetablePb*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (FscTimetablePb*)[[[FscTimetablePb builder] mergeFromCodedInputStream:input] build];
}
+ (FscTimetablePb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (FscTimetablePb*)[[[FscTimetablePb builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (FscTimetablePbBuilder*) builder {
  return [[FscTimetablePbBuilder alloc] init];
}
+ (FscTimetablePbBuilder*) builderWithPrototype:(FscTimetablePb*) prototype {
  return [[FscTimetablePb builder] mergeFrom:prototype];
}
- (FscTimetablePbBuilder*) builder {
  return [FscTimetablePb builder];
}
- (FscTimetablePbBuilder*) toBuilder {
  return [FscTimetablePb builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasYear) {
    [output appendFormat:@"%@%@: %@\n", indent, @"year", [NSNumber numberWithLongLong:self.year]];
  }
  if (self.hasSemester) {
    [output appendFormat:@"%@%@: %@\n", indent, @"semester", [NSNumber numberWithInteger:self.semester]];
  }
  if (self.hasClassId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"classId", [NSNumber numberWithLongLong:self.classId]];
  }
  if (self.hasTime) {
    [output appendFormat:@"%@%@: %@\n", indent, @"time", [NSNumber numberWithInteger:self.time]];
  }
  if (self.hasPeriod) {
    [output appendFormat:@"%@%@: %@\n", indent, @"period", [NSNumber numberWithInteger:self.period]];
  }
  if (self.hasSchoolId) {
    [output appendFormat:@"%@%@: %@\n", indent, @"schoolId", [NSNumber numberWithLongLong:self.schoolId]];
  }
  if (self.hasMonSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"monSubject", [NSNumber numberWithLongLong:self.monSubject]];
  }
  if (self.hasTueSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"tueSubject", [NSNumber numberWithLongLong:self.tueSubject]];
  }
  if (self.hasWedSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"wedSubject", [NSNumber numberWithLongLong:self.wedSubject]];
  }
  if (self.hasThuSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"thuSubject", [NSNumber numberWithLongLong:self.thuSubject]];
  }
  if (self.hasFriSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"friSubject", [NSNumber numberWithLongLong:self.friSubject]];
  }
  if (self.hasSatSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"satSubject", [NSNumber numberWithLongLong:self.satSubject]];
  }
  if (self.hasSunSubject) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sunSubject", [NSNumber numberWithLongLong:self.sunSubject]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasYear) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.year] forKey: @"year"];
  }
  if (self.hasSemester) {
    [dictionary setObject: [NSNumber numberWithInteger:self.semester] forKey: @"semester"];
  }
  if (self.hasClassId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.classId] forKey: @"classId"];
  }
  if (self.hasTime) {
    [dictionary setObject: [NSNumber numberWithInteger:self.time] forKey: @"time"];
  }
  if (self.hasPeriod) {
    [dictionary setObject: [NSNumber numberWithInteger:self.period] forKey: @"period"];
  }
  if (self.hasSchoolId) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.schoolId] forKey: @"schoolId"];
  }
  if (self.hasMonSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.monSubject] forKey: @"monSubject"];
  }
  if (self.hasTueSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.tueSubject] forKey: @"tueSubject"];
  }
  if (self.hasWedSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.wedSubject] forKey: @"wedSubject"];
  }
  if (self.hasThuSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.thuSubject] forKey: @"thuSubject"];
  }
  if (self.hasFriSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.friSubject] forKey: @"friSubject"];
  }
  if (self.hasSatSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.satSubject] forKey: @"satSubject"];
  }
  if (self.hasSunSubject) {
    [dictionary setObject: [NSNumber numberWithLongLong:self.sunSubject] forKey: @"sunSubject"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[FscTimetablePb class]]) {
    return NO;
  }
  FscTimetablePb *otherMessage = other;
  return
      self.hasYear == otherMessage.hasYear &&
      (!self.hasYear || self.year == otherMessage.year) &&
      self.hasSemester == otherMessage.hasSemester &&
      (!self.hasSemester || self.semester == otherMessage.semester) &&
      self.hasClassId == otherMessage.hasClassId &&
      (!self.hasClassId || self.classId == otherMessage.classId) &&
      self.hasTime == otherMessage.hasTime &&
      (!self.hasTime || self.time == otherMessage.time) &&
      self.hasPeriod == otherMessage.hasPeriod &&
      (!self.hasPeriod || self.period == otherMessage.period) &&
      self.hasSchoolId == otherMessage.hasSchoolId &&
      (!self.hasSchoolId || self.schoolId == otherMessage.schoolId) &&
      self.hasMonSubject == otherMessage.hasMonSubject &&
      (!self.hasMonSubject || self.monSubject == otherMessage.monSubject) &&
      self.hasTueSubject == otherMessage.hasTueSubject &&
      (!self.hasTueSubject || self.tueSubject == otherMessage.tueSubject) &&
      self.hasWedSubject == otherMessage.hasWedSubject &&
      (!self.hasWedSubject || self.wedSubject == otherMessage.wedSubject) &&
      self.hasThuSubject == otherMessage.hasThuSubject &&
      (!self.hasThuSubject || self.thuSubject == otherMessage.thuSubject) &&
      self.hasFriSubject == otherMessage.hasFriSubject &&
      (!self.hasFriSubject || self.friSubject == otherMessage.friSubject) &&
      self.hasSatSubject == otherMessage.hasSatSubject &&
      (!self.hasSatSubject || self.satSubject == otherMessage.satSubject) &&
      self.hasSunSubject == otherMessage.hasSunSubject &&
      (!self.hasSunSubject || self.sunSubject == otherMessage.sunSubject) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasYear) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.year] hash];
  }
  if (self.hasSemester) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.semester] hash];
  }
  if (self.hasClassId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.classId] hash];
  }
  if (self.hasTime) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.time] hash];
  }
  if (self.hasPeriod) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.period] hash];
  }
  if (self.hasSchoolId) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.schoolId] hash];
  }
  if (self.hasMonSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.monSubject] hash];
  }
  if (self.hasTueSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.tueSubject] hash];
  }
  if (self.hasWedSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.wedSubject] hash];
  }
  if (self.hasThuSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.thuSubject] hash];
  }
  if (self.hasFriSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.friSubject] hash];
  }
  if (self.hasSatSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.satSubject] hash];
  }
  if (self.hasSunSubject) {
    hashCode = hashCode * 31 + [[NSNumber numberWithLongLong:self.sunSubject] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface FscTimetablePbBuilder()
@property (strong) FscTimetablePb* resultFscTimetablePb;
@end

@implementation FscTimetablePbBuilder
@synthesize resultFscTimetablePb;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFscTimetablePb = [[FscTimetablePb alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFscTimetablePb;
}
- (FscTimetablePbBuilder*) clear {
  self.resultFscTimetablePb = [[FscTimetablePb alloc] init];
  return self;
}
- (FscTimetablePbBuilder*) clone {
  return [FscTimetablePb builderWithPrototype:resultFscTimetablePb];
}
- (FscTimetablePb*) defaultInstance {
  return [FscTimetablePb defaultInstance];
}
- (FscTimetablePb*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (FscTimetablePb*) buildPartial {
  FscTimetablePb* returnMe = resultFscTimetablePb;
  self.resultFscTimetablePb = nil;
  return returnMe;
}
- (FscTimetablePbBuilder*) mergeFrom:(FscTimetablePb*) other {
  if (other == [FscTimetablePb defaultInstance]) {
    return self;
  }
  if (other.hasYear) {
    [self setYear:other.year];
  }
  if (other.hasSemester) {
    [self setSemester:other.semester];
  }
  if (other.hasClassId) {
    [self setClassId:other.classId];
  }
  if (other.hasTime) {
    [self setTime:other.time];
  }
  if (other.hasPeriod) {
    [self setPeriod:other.period];
  }
  if (other.hasSchoolId) {
    [self setSchoolId:other.schoolId];
  }
  if (other.hasMonSubject) {
    [self setMonSubject:other.monSubject];
  }
  if (other.hasTueSubject) {
    [self setTueSubject:other.tueSubject];
  }
  if (other.hasWedSubject) {
    [self setWedSubject:other.wedSubject];
  }
  if (other.hasThuSubject) {
    [self setThuSubject:other.thuSubject];
  }
  if (other.hasFriSubject) {
    [self setFriSubject:other.friSubject];
  }
  if (other.hasSatSubject) {
    [self setSatSubject:other.satSubject];
  }
  if (other.hasSunSubject) {
    [self setSunSubject:other.sunSubject];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (FscTimetablePbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (FscTimetablePbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
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
        [self setYear:[input readInt64]];
        break;
      }
      case 16: {
        [self setSemester:[input readInt32]];
        break;
      }
      case 24: {
        [self setClassId:[input readInt64]];
        break;
      }
      case 32: {
        [self setTime:[input readInt32]];
        break;
      }
      case 40: {
        [self setPeriod:[input readInt32]];
        break;
      }
      case 48: {
        [self setSchoolId:[input readInt64]];
        break;
      }
      case 56: {
        [self setMonSubject:[input readInt64]];
        break;
      }
      case 64: {
        [self setTueSubject:[input readInt64]];
        break;
      }
      case 72: {
        [self setWedSubject:[input readInt64]];
        break;
      }
      case 80: {
        [self setThuSubject:[input readInt64]];
        break;
      }
      case 88: {
        [self setFriSubject:[input readInt64]];
        break;
      }
      case 96: {
        [self setSatSubject:[input readInt64]];
        break;
      }
      case 104: {
        [self setSunSubject:[input readInt64]];
        break;
      }
    }
  }
}
- (BOOL) hasYear {
  return resultFscTimetablePb.hasYear;
}
- (SInt64) year {
  return resultFscTimetablePb.year;
}
- (FscTimetablePbBuilder*) setYear:(SInt64) value {
  resultFscTimetablePb.hasYear = YES;
  resultFscTimetablePb.year = value;
  return self;
}
- (FscTimetablePbBuilder*) clearYear {
  resultFscTimetablePb.hasYear = NO;
  resultFscTimetablePb.year = 0L;
  return self;
}
- (BOOL) hasSemester {
  return resultFscTimetablePb.hasSemester;
}
- (SInt32) semester {
  return resultFscTimetablePb.semester;
}
- (FscTimetablePbBuilder*) setSemester:(SInt32) value {
  resultFscTimetablePb.hasSemester = YES;
  resultFscTimetablePb.semester = value;
  return self;
}
- (FscTimetablePbBuilder*) clearSemester {
  resultFscTimetablePb.hasSemester = NO;
  resultFscTimetablePb.semester = 0;
  return self;
}
- (BOOL) hasClassId {
  return resultFscTimetablePb.hasClassId;
}
- (SInt64) classId {
  return resultFscTimetablePb.classId;
}
- (FscTimetablePbBuilder*) setClassId:(SInt64) value {
  resultFscTimetablePb.hasClassId = YES;
  resultFscTimetablePb.classId = value;
  return self;
}
- (FscTimetablePbBuilder*) clearClassId {
  resultFscTimetablePb.hasClassId = NO;
  resultFscTimetablePb.classId = 0L;
  return self;
}
- (BOOL) hasTime {
  return resultFscTimetablePb.hasTime;
}
- (SInt32) time {
  return resultFscTimetablePb.time;
}
- (FscTimetablePbBuilder*) setTime:(SInt32) value {
  resultFscTimetablePb.hasTime = YES;
  resultFscTimetablePb.time = value;
  return self;
}
- (FscTimetablePbBuilder*) clearTime {
  resultFscTimetablePb.hasTime = NO;
  resultFscTimetablePb.time = 0;
  return self;
}
- (BOOL) hasPeriod {
  return resultFscTimetablePb.hasPeriod;
}
- (SInt32) period {
  return resultFscTimetablePb.period;
}
- (FscTimetablePbBuilder*) setPeriod:(SInt32) value {
  resultFscTimetablePb.hasPeriod = YES;
  resultFscTimetablePb.period = value;
  return self;
}
- (FscTimetablePbBuilder*) clearPeriod {
  resultFscTimetablePb.hasPeriod = NO;
  resultFscTimetablePb.period = 0;
  return self;
}
- (BOOL) hasSchoolId {
  return resultFscTimetablePb.hasSchoolId;
}
- (SInt64) schoolId {
  return resultFscTimetablePb.schoolId;
}
- (FscTimetablePbBuilder*) setSchoolId:(SInt64) value {
  resultFscTimetablePb.hasSchoolId = YES;
  resultFscTimetablePb.schoolId = value;
  return self;
}
- (FscTimetablePbBuilder*) clearSchoolId {
  resultFscTimetablePb.hasSchoolId = NO;
  resultFscTimetablePb.schoolId = 0L;
  return self;
}
- (BOOL) hasMonSubject {
  return resultFscTimetablePb.hasMonSubject;
}
- (SInt64) monSubject {
  return resultFscTimetablePb.monSubject;
}
- (FscTimetablePbBuilder*) setMonSubject:(SInt64) value {
  resultFscTimetablePb.hasMonSubject = YES;
  resultFscTimetablePb.monSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearMonSubject {
  resultFscTimetablePb.hasMonSubject = NO;
  resultFscTimetablePb.monSubject = 0L;
  return self;
}
- (BOOL) hasTueSubject {
  return resultFscTimetablePb.hasTueSubject;
}
- (SInt64) tueSubject {
  return resultFscTimetablePb.tueSubject;
}
- (FscTimetablePbBuilder*) setTueSubject:(SInt64) value {
  resultFscTimetablePb.hasTueSubject = YES;
  resultFscTimetablePb.tueSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearTueSubject {
  resultFscTimetablePb.hasTueSubject = NO;
  resultFscTimetablePb.tueSubject = 0L;
  return self;
}
- (BOOL) hasWedSubject {
  return resultFscTimetablePb.hasWedSubject;
}
- (SInt64) wedSubject {
  return resultFscTimetablePb.wedSubject;
}
- (FscTimetablePbBuilder*) setWedSubject:(SInt64) value {
  resultFscTimetablePb.hasWedSubject = YES;
  resultFscTimetablePb.wedSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearWedSubject {
  resultFscTimetablePb.hasWedSubject = NO;
  resultFscTimetablePb.wedSubject = 0L;
  return self;
}
- (BOOL) hasThuSubject {
  return resultFscTimetablePb.hasThuSubject;
}
- (SInt64) thuSubject {
  return resultFscTimetablePb.thuSubject;
}
- (FscTimetablePbBuilder*) setThuSubject:(SInt64) value {
  resultFscTimetablePb.hasThuSubject = YES;
  resultFscTimetablePb.thuSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearThuSubject {
  resultFscTimetablePb.hasThuSubject = NO;
  resultFscTimetablePb.thuSubject = 0L;
  return self;
}
- (BOOL) hasFriSubject {
  return resultFscTimetablePb.hasFriSubject;
}
- (SInt64) friSubject {
  return resultFscTimetablePb.friSubject;
}
- (FscTimetablePbBuilder*) setFriSubject:(SInt64) value {
  resultFscTimetablePb.hasFriSubject = YES;
  resultFscTimetablePb.friSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearFriSubject {
  resultFscTimetablePb.hasFriSubject = NO;
  resultFscTimetablePb.friSubject = 0L;
  return self;
}
- (BOOL) hasSatSubject {
  return resultFscTimetablePb.hasSatSubject;
}
- (SInt64) satSubject {
  return resultFscTimetablePb.satSubject;
}
- (FscTimetablePbBuilder*) setSatSubject:(SInt64) value {
  resultFscTimetablePb.hasSatSubject = YES;
  resultFscTimetablePb.satSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearSatSubject {
  resultFscTimetablePb.hasSatSubject = NO;
  resultFscTimetablePb.satSubject = 0L;
  return self;
}
- (BOOL) hasSunSubject {
  return resultFscTimetablePb.hasSunSubject;
}
- (SInt64) sunSubject {
  return resultFscTimetablePb.sunSubject;
}
- (FscTimetablePbBuilder*) setSunSubject:(SInt64) value {
  resultFscTimetablePb.hasSunSubject = YES;
  resultFscTimetablePb.sunSubject = value;
  return self;
}
- (FscTimetablePbBuilder*) clearSunSubject {
  resultFscTimetablePb.hasSunSubject = NO;
  resultFscTimetablePb.sunSubject = 0L;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)