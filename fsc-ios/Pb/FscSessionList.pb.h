// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

#import "FscSession.pb.h"
#import "FscChatUser.pb.h"
#import "FscChatGroup.pb.h"
#import "FscChatPublic.pb.h"
#import "FscChatClass.pb.h"
#import "FscChatTrg.pb.h"
// @@protoc_insertion_point(imports)

@class CRecorderListPb;
@class CRecorderListPbBuilder;
@class CRecorderPb;
@class CRecorderPbBuilder;
@class CSessionPb;
@class CSessionPbBuilder;
@class CUserPb;
@class CUserPbBuilder;
@class FscSessionPb;
@class FscSessionPbBuilder;
@class FscSessionPbList;
@class FscSessionPbListBuilder;
@class GRecorderListPb;
@class GRecorderListPbBuilder;
@class GRecorderPb;
@class GRecorderPbBuilder;
@class GSessionPb;
@class GSessionPbBuilder;
@class GUserPb;
@class GUserPbBuilder;
@class PMenuPb;
@class PMenuPbBuilder;
@class PRecorderListPb;
@class PRecorderListPbBuilder;
@class PRecorderPb;
@class PRecorderPbBuilder;
@class PSessionPb;
@class PSessionPbBuilder;
@class PUserListPb;
@class PUserListPbBuilder;
@class PUserPb;
@class PUserPbBuilder;
@class TRecorderListPb;
@class TRecorderListPbBuilder;
@class TRecorderPb;
@class TRecorderPbBuilder;
@class TSessionPb;
@class TSessionPbBuilder;
@class TUserPb;
@class TUserPbBuilder;
@class TeachNodeContentPb;
@class TeachNodeContentPbBuilder;
@class TeachNodeDetailsPb;
@class TeachNodeDetailsPbBuilder;
@class TeachNodeListPb;
@class TeachNodeListPbBuilder;
@class TeachNodePb;
@class TeachNodePbBuilder;
@class URecorderListPb;
@class URecorderListPbBuilder;
@class URecorderPb;
@class URecorderPbBuilder;
@class USessionPb;
@class USessionPbBuilder;



@interface FscSessionListRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define FscSessionPbList_messagePb @"messagePb"
#define FscSessionPbList_userSessionPb @"userSessionPb"
#define FscSessionPbList_userRecorderPb @"userRecorderPb"
#define FscSessionPbList_groupSessionPb @"groupSessionPb"
#define FscSessionPbList_groupRecorderPb @"groupRecorderPb"
#define FscSessionPbList_groupUserPb @"groupUserPb"
#define FscSessionPbList_publicUserPb @"publicUserPb"
#define FscSessionPbList_publicSessionPb @"publicSessionPb"
#define FscSessionPbList_publicRecorderPb @"publicRecorderPb"
#define FscSessionPbList_classUserPb @"classUserPb"
#define FscSessionPbList_classSessionPb @"classSessionPb"
#define FscSessionPbList_classRecorderPb @"classRecorderPb"
#define FscSessionPbList_trgUserPb @"trgUserPb"
#define FscSessionPbList_trgSessionPb @"trgSessionPb"
#define FscSessionPbList_trgRecorderPb @"trgRecorderPb"
@interface FscSessionPbList : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * messagePbArray;
  NSMutableArray * userSessionPbArray;
  NSMutableArray * userRecorderPbArray;
  NSMutableArray * groupSessionPbArray;
  NSMutableArray * groupRecorderPbArray;
  NSMutableArray * groupUserPbArray;
  NSMutableArray * publicUserPbArray;
  NSMutableArray * publicSessionPbArray;
  NSMutableArray * publicRecorderPbArray;
  NSMutableArray * classUserPbArray;
  NSMutableArray * classSessionPbArray;
  NSMutableArray * classRecorderPbArray;
  NSMutableArray * trgUserPbArray;
  NSMutableArray * trgSessionPbArray;
  NSMutableArray * trgRecorderPbArray;
}
@property (readonly, strong) NSArray * messagePb;
@property (readonly, strong) NSArray * userSessionPb;
@property (readonly, strong) NSArray * userRecorderPb;
@property (readonly, strong) NSArray * groupSessionPb;
@property (readonly, strong) NSArray * groupRecorderPb;
@property (readonly, strong) NSArray * groupUserPb;
@property (readonly, strong) NSArray * publicUserPb;
@property (readonly, strong) NSArray * publicSessionPb;
@property (readonly, strong) NSArray * publicRecorderPb;
@property (readonly, strong) NSArray * classUserPb;
@property (readonly, strong) NSArray * classSessionPb;
@property (readonly, strong) NSArray * classRecorderPb;
@property (readonly, strong) NSArray * trgUserPb;
@property (readonly, strong) NSArray * trgSessionPb;
@property (readonly, strong) NSArray * trgRecorderPb;
- (FscSessionPb*)messagePbAtIndex:(NSUInteger)index;
- (USessionPb*)userSessionPbAtIndex:(NSUInteger)index;
- (URecorderPb*)userRecorderPbAtIndex:(NSUInteger)index;
- (GSessionPb*)groupSessionPbAtIndex:(NSUInteger)index;
- (GRecorderPb*)groupRecorderPbAtIndex:(NSUInteger)index;
- (GUserPb*)groupUserPbAtIndex:(NSUInteger)index;
- (PUserPb*)publicUserPbAtIndex:(NSUInteger)index;
- (PSessionPb*)publicSessionPbAtIndex:(NSUInteger)index;
- (PRecorderPb*)publicRecorderPbAtIndex:(NSUInteger)index;
- (CUserPb*)classUserPbAtIndex:(NSUInteger)index;
- (CSessionPb*)classSessionPbAtIndex:(NSUInteger)index;
- (CRecorderPb*)classRecorderPbAtIndex:(NSUInteger)index;
- (TUserPb*)trgUserPbAtIndex:(NSUInteger)index;
- (TSessionPb*)trgSessionPbAtIndex:(NSUInteger)index;
- (TRecorderPb*)trgRecorderPbAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (FscSessionPbListBuilder*) builder;
+ (FscSessionPbListBuilder*) builder;
+ (FscSessionPbListBuilder*) builderWithPrototype:(FscSessionPbList*) prototype;
- (FscSessionPbListBuilder*) toBuilder;

+ (FscSessionPbList*) parseFromData:(NSData*) data;
+ (FscSessionPbList*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscSessionPbList*) parseFromInputStream:(NSInputStream*) input;
+ (FscSessionPbList*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (FscSessionPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (FscSessionPbList*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface FscSessionPbListBuilder : PBGeneratedMessageBuilder {
@private
  FscSessionPbList* resultFscSessionPbList;
}

- (FscSessionPbList*) defaultInstance;

- (FscSessionPbListBuilder*) clear;
- (FscSessionPbListBuilder*) clone;

- (FscSessionPbList*) build;
- (FscSessionPbList*) buildPartial;

- (FscSessionPbListBuilder*) mergeFrom:(FscSessionPbList*) other;
- (FscSessionPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (FscSessionPbListBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray *)messagePb;
- (FscSessionPb*)messagePbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addMessagePb:(FscSessionPb*)value;
- (FscSessionPbListBuilder *)setMessagePbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearMessagePb;

- (NSMutableArray *)userSessionPb;
- (USessionPb*)userSessionPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addUserSessionPb:(USessionPb*)value;
- (FscSessionPbListBuilder *)setUserSessionPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearUserSessionPb;

- (NSMutableArray *)userRecorderPb;
- (URecorderPb*)userRecorderPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addUserRecorderPb:(URecorderPb*)value;
- (FscSessionPbListBuilder *)setUserRecorderPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearUserRecorderPb;

- (NSMutableArray *)groupSessionPb;
- (GSessionPb*)groupSessionPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addGroupSessionPb:(GSessionPb*)value;
- (FscSessionPbListBuilder *)setGroupSessionPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearGroupSessionPb;

- (NSMutableArray *)groupRecorderPb;
- (GRecorderPb*)groupRecorderPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addGroupRecorderPb:(GRecorderPb*)value;
- (FscSessionPbListBuilder *)setGroupRecorderPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearGroupRecorderPb;

- (NSMutableArray *)groupUserPb;
- (GUserPb*)groupUserPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addGroupUserPb:(GUserPb*)value;
- (FscSessionPbListBuilder *)setGroupUserPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearGroupUserPb;

- (NSMutableArray *)publicUserPb;
- (PUserPb*)publicUserPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addPublicUserPb:(PUserPb*)value;
- (FscSessionPbListBuilder *)setPublicUserPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearPublicUserPb;

- (NSMutableArray *)publicSessionPb;
- (PSessionPb*)publicSessionPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addPublicSessionPb:(PSessionPb*)value;
- (FscSessionPbListBuilder *)setPublicSessionPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearPublicSessionPb;

- (NSMutableArray *)publicRecorderPb;
- (PRecorderPb*)publicRecorderPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addPublicRecorderPb:(PRecorderPb*)value;
- (FscSessionPbListBuilder *)setPublicRecorderPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearPublicRecorderPb;

- (NSMutableArray *)classUserPb;
- (CUserPb*)classUserPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addClassUserPb:(CUserPb*)value;
- (FscSessionPbListBuilder *)setClassUserPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearClassUserPb;

- (NSMutableArray *)classSessionPb;
- (CSessionPb*)classSessionPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addClassSessionPb:(CSessionPb*)value;
- (FscSessionPbListBuilder *)setClassSessionPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearClassSessionPb;

- (NSMutableArray *)classRecorderPb;
- (CRecorderPb*)classRecorderPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addClassRecorderPb:(CRecorderPb*)value;
- (FscSessionPbListBuilder *)setClassRecorderPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearClassRecorderPb;

- (NSMutableArray *)trgUserPb;
- (TUserPb*)trgUserPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addTrgUserPb:(TUserPb*)value;
- (FscSessionPbListBuilder *)setTrgUserPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearTrgUserPb;

- (NSMutableArray *)trgSessionPb;
- (TSessionPb*)trgSessionPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addTrgSessionPb:(TSessionPb*)value;
- (FscSessionPbListBuilder *)setTrgSessionPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearTrgSessionPb;

- (NSMutableArray *)trgRecorderPb;
- (TRecorderPb*)trgRecorderPbAtIndex:(NSUInteger)index;
- (FscSessionPbListBuilder *)addTrgRecorderPb:(TRecorderPb*)value;
- (FscSessionPbListBuilder *)setTrgRecorderPbArray:(NSArray *)array;
- (FscSessionPbListBuilder *)clearTrgRecorderPb;
@end


// @@protoc_insertion_point(global_scope)
