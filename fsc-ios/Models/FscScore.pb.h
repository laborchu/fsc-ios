// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class ScoreListPb;
@class ScoreListPbBuilder;
@class ScorePb;
@class ScorePbBuilder;
@class ScoreStuPb;
@class ScoreStuPbBuilder;



@interface FscScoreRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define ScoreListPb_score @"score"
#define ScoreListPb_scoreStu @"scoreStu"
@interface ScoreListPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * scoreArray;
  NSMutableArray * scoreStuArray;
}
@property (readonly, strong) NSArray * score;
@property (readonly, strong) NSArray * scoreStu;
- (ScorePb*)scoreAtIndex:(NSUInteger)index;
- (ScoreStuPb*)scoreStuAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ScoreListPbBuilder*) builder;
+ (ScoreListPbBuilder*) builder;
+ (ScoreListPbBuilder*) builderWithPrototype:(ScoreListPb*) prototype;
- (ScoreListPbBuilder*) toBuilder;

+ (ScoreListPb*) parseFromData:(NSData*) data;
+ (ScoreListPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ScoreListPb*) parseFromInputStream:(NSInputStream*) input;
+ (ScoreListPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ScoreListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ScoreListPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ScoreListPbBuilder : PBGeneratedMessageBuilder {
@private
  ScoreListPb* resultScoreListPb;
}

- (ScoreListPb*) defaultInstance;

- (ScoreListPbBuilder*) clear;
- (ScoreListPbBuilder*) clone;

- (ScoreListPb*) build;
- (ScoreListPb*) buildPartial;

- (ScoreListPbBuilder*) mergeFrom:(ScoreListPb*) other;
- (ScoreListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ScoreListPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)score;
- (ScorePb*)scoreAtIndex:(NSUInteger)index;
- (ScoreListPbBuilder *)addScore:(ScorePb*)value;
- (ScoreListPbBuilder *)setScoreArray:(NSArray *)array;
- (ScoreListPbBuilder *)clearScore;

- (NSMutableArray *)scoreStu;
- (ScoreStuPb*)scoreStuAtIndex:(NSUInteger)index;
- (ScoreListPbBuilder *)addScoreStu:(ScoreStuPb*)value;
- (ScoreListPbBuilder *)setScoreStuArray:(NSArray *)array;
- (ScoreListPbBuilder *)clearScoreStu;
@end

#define ScorePb_id @"id"
#define ScorePb_schoolId @"schoolId"
#define ScorePb_subjectId @"subjectId"
#define ScorePb_examName @"examName"
#define ScorePb_studentId @"studentId"
#define ScorePb_score @"score"
#define ScorePb_modifiedDate @"modifiedDate"
#define ScorePb_dataStatus @"dataStatus"
@interface ScorePb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasId_:1;
  BOOL hasSchoolId_:1;
  BOOL hasSubjectId_:1;
  BOOL hasStudentId_:1;
  BOOL hasModifiedDate_:1;
  BOOL hasScore_:1;
  BOOL hasDataStatus_:1;
  BOOL hasExamName_:1;
  SInt64 id;
  SInt64 schoolId;
  SInt64 subjectId;
  SInt64 studentId;
  SInt64 modifiedDate;
  SInt32 score;
  SInt32 dataStatus;
  NSString* examName;
}
- (BOOL) hasId;
- (BOOL) hasSchoolId;
- (BOOL) hasSubjectId;
- (BOOL) hasExamName;
- (BOOL) hasStudentId;
- (BOOL) hasScore;
- (BOOL) hasModifiedDate;
- (BOOL) hasDataStatus;
@property (readonly) SInt64 id;
@property (readonly) SInt64 schoolId;
@property (readonly) SInt64 subjectId;
@property (readonly, strong) NSString* examName;
@property (readonly) SInt64 studentId;
@property (readonly) SInt32 score;
@property (readonly) SInt64 modifiedDate;
@property (readonly) SInt32 dataStatus;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ScorePbBuilder*) builder;
+ (ScorePbBuilder*) builder;
+ (ScorePbBuilder*) builderWithPrototype:(ScorePb*) prototype;
- (ScorePbBuilder*) toBuilder;

+ (ScorePb*) parseFromData:(NSData*) data;
+ (ScorePb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ScorePb*) parseFromInputStream:(NSInputStream*) input;
+ (ScorePb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ScorePb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ScorePb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ScorePbBuilder : PBGeneratedMessageBuilder {
@private
  ScorePb* resultScorePb;
}

- (ScorePb*) defaultInstance;

- (ScorePbBuilder*) clear;
- (ScorePbBuilder*) clone;

- (ScorePb*) build;
- (ScorePb*) buildPartial;

- (ScorePbBuilder*) mergeFrom:(ScorePb*) other;
- (ScorePbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ScorePbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasId;
- (SInt64) id;
- (ScorePbBuilder*) setId:(SInt64) value;
- (ScorePbBuilder*) clearId;

- (BOOL) hasSchoolId;
- (SInt64) schoolId;
- (ScorePbBuilder*) setSchoolId:(SInt64) value;
- (ScorePbBuilder*) clearSchoolId;

- (BOOL) hasSubjectId;
- (SInt64) subjectId;
- (ScorePbBuilder*) setSubjectId:(SInt64) value;
- (ScorePbBuilder*) clearSubjectId;

- (BOOL) hasExamName;
- (NSString*) examName;
- (ScorePbBuilder*) setExamName:(NSString*) value;
- (ScorePbBuilder*) clearExamName;

- (BOOL) hasStudentId;
- (SInt64) studentId;
- (ScorePbBuilder*) setStudentId:(SInt64) value;
- (ScorePbBuilder*) clearStudentId;

- (BOOL) hasScore;
- (SInt32) score;
- (ScorePbBuilder*) setScore:(SInt32) value;
- (ScorePbBuilder*) clearScore;

- (BOOL) hasModifiedDate;
- (SInt64) modifiedDate;
- (ScorePbBuilder*) setModifiedDate:(SInt64) value;
- (ScorePbBuilder*) clearModifiedDate;

- (BOOL) hasDataStatus;
- (SInt32) dataStatus;
- (ScorePbBuilder*) setDataStatus:(SInt32) value;
- (ScorePbBuilder*) clearDataStatus;
@end

#define ScoreStuPb_scoreId @"scoreId"
#define ScoreStuPb_studentId @"studentId"
#define ScoreStuPb_score @"score"
#define ScoreStuPb_studentName @"studentName"
#define ScoreStuPb_classId @"classId"
@interface ScoreStuPb : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasScoreId_:1;
  BOOL hasStudentId_:1;
  BOOL hasScore_:1;
  BOOL hasClassId_:1;
  BOOL hasStudentName_:1;
  SInt64 scoreId;
  SInt64 studentId;
  SInt64 score;
  SInt64 classId;
  NSString* studentName;
}
- (BOOL) hasScoreId;
- (BOOL) hasStudentId;
- (BOOL) hasScore;
- (BOOL) hasStudentName;
- (BOOL) hasClassId;
@property (readonly) SInt64 scoreId;
@property (readonly) SInt64 studentId;
@property (readonly) SInt64 score;
@property (readonly, strong) NSString* studentName;
@property (readonly) SInt64 classId;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (ScoreStuPbBuilder*) builder;
+ (ScoreStuPbBuilder*) builder;
+ (ScoreStuPbBuilder*) builderWithPrototype:(ScoreStuPb*) prototype;
- (ScoreStuPbBuilder*) toBuilder;

+ (ScoreStuPb*) parseFromData:(NSData*) data;
+ (ScoreStuPb*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ScoreStuPb*) parseFromInputStream:(NSInputStream*) input;
+ (ScoreStuPb*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (ScoreStuPb*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (ScoreStuPb*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface ScoreStuPbBuilder : PBGeneratedMessageBuilder {
@private
  ScoreStuPb* resultScoreStuPb;
}

- (ScoreStuPb*) defaultInstance;

- (ScoreStuPbBuilder*) clear;
- (ScoreStuPbBuilder*) clone;

- (ScoreStuPb*) build;
- (ScoreStuPb*) buildPartial;

- (ScoreStuPbBuilder*) mergeFrom:(ScoreStuPb*) other;
- (ScoreStuPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (ScoreStuPbBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasScoreId;
- (SInt64) scoreId;
- (ScoreStuPbBuilder*) setScoreId:(SInt64) value;
- (ScoreStuPbBuilder*) clearScoreId;

- (BOOL) hasStudentId;
- (SInt64) studentId;
- (ScoreStuPbBuilder*) setStudentId:(SInt64) value;
- (ScoreStuPbBuilder*) clearStudentId;

- (BOOL) hasScore;
- (SInt64) score;
- (ScoreStuPbBuilder*) setScore:(SInt64) value;
- (ScoreStuPbBuilder*) clearScore;

- (BOOL) hasStudentName;
- (NSString*) studentName;
- (ScoreStuPbBuilder*) setStudentName:(NSString*) value;
- (ScoreStuPbBuilder*) clearStudentName;

- (BOOL) hasClassId;
- (SInt64) classId;
- (ScoreStuPbBuilder*) setClassId:(SInt64) value;
- (ScoreStuPbBuilder*) clearClassId;
@end


// @@protoc_insertion_point(global_scope)