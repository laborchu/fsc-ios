//
//  FSCUser+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCUser (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSNumber *gender;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *password;
@property (nullable, nonatomic, retain) NSNumber *phaseId;
@property (nullable, nonatomic, retain) NSString *portrait;
@property (nullable, nonatomic, retain) NSNumber *pubNotify;
@property (nullable, nonatomic, retain) NSNumber *schoolId;
@property (nullable, nonatomic, retain) NSString *schoolName;
@property (nullable, nonatomic, retain) NSString *token;
@property (nullable, nonatomic, retain) NSString *username;
@property (nullable, nonatomic, retain) NSNumber *userType;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) NSNumber *hasInitPwd;
@property (nullable, nonatomic, retain) NSSet<FSCActivity *> *activities;
@property (nullable, nonatomic, retain) NSSet<FSCApply *> *applys;
@property (nullable, nonatomic, retain) NSSet<FSCClass *> *classes;
@property (nullable, nonatomic, retain) NSSet<FSCLinkman *> *linkmanList;
@property (nullable, nonatomic, retain) NSSet<FSCNotice *> *notices;
@property (nullable, nonatomic, retain) NSSet<FSCPublicUser *> *publicUsers;
@property (nullable, nonatomic, retain) NSSet<FSCSession *> *sessions;
@property (nullable, nonatomic, retain) NSSet<FSCSnsMsg *> *snsMsgs;
@property (nullable, nonatomic, retain) NSSet<FSCUserStudent *> *students;
@property (nullable, nonatomic, retain) NSSet<FSCTeacher *> *teachers;
@property (nullable, nonatomic, retain) NSSet<FSCTeachNode *> *teachNodes;
@property (nullable, nonatomic, retain) NSSet<FSCTeachPlan *> *teachPlans;
@property (nullable, nonatomic, retain) NSSet<FSCUnreadRecorder *> *unreadRecorders;
@property (nullable, nonatomic, retain) NSSet<FSCVote *> *votes;
@property (nullable, nonatomic, retain) FSCSchool *school;

@end

@interface FSCUser (CoreDataGeneratedAccessors)

- (void)addActivitiesObject:(FSCActivity *)value;
- (void)removeActivitiesObject:(FSCActivity *)value;
- (void)addActivities:(NSSet<FSCActivity *> *)values;
- (void)removeActivities:(NSSet<FSCActivity *> *)values;

- (void)addApplysObject:(FSCApply *)value;
- (void)removeApplysObject:(FSCApply *)value;
- (void)addApplys:(NSSet<FSCApply *> *)values;
- (void)removeApplys:(NSSet<FSCApply *> *)values;

- (void)addClassesObject:(FSCClass *)value;
- (void)removeClassesObject:(FSCClass *)value;
- (void)addClasses:(NSSet<FSCClass *> *)values;
- (void)removeClasses:(NSSet<FSCClass *> *)values;

- (void)addLinkmanListObject:(FSCLinkman *)value;
- (void)removeLinkmanListObject:(FSCLinkman *)value;
- (void)addLinkmanList:(NSSet<FSCLinkman *> *)values;
- (void)removeLinkmanList:(NSSet<FSCLinkman *> *)values;

- (void)addNoticesObject:(FSCNotice *)value;
- (void)removeNoticesObject:(FSCNotice *)value;
- (void)addNotices:(NSSet<FSCNotice *> *)values;
- (void)removeNotices:(NSSet<FSCNotice *> *)values;

- (void)addPublicUsersObject:(FSCPublicUser *)value;
- (void)removePublicUsersObject:(FSCPublicUser *)value;
- (void)addPublicUsers:(NSSet<FSCPublicUser *> *)values;
- (void)removePublicUsers:(NSSet<FSCPublicUser *> *)values;

- (void)addSessionsObject:(FSCSession *)value;
- (void)removeSessionsObject:(FSCSession *)value;
- (void)addSessions:(NSSet<FSCSession *> *)values;
- (void)removeSessions:(NSSet<FSCSession *> *)values;

- (void)addSnsMsgsObject:(FSCSnsMsg *)value;
- (void)removeSnsMsgsObject:(FSCSnsMsg *)value;
- (void)addSnsMsgs:(NSSet<FSCSnsMsg *> *)values;
- (void)removeSnsMsgs:(NSSet<FSCSnsMsg *> *)values;

- (void)addStudentsObject:(FSCUserStudent *)value;
- (void)removeStudentsObject:(FSCUserStudent *)value;
- (void)addStudents:(NSSet<FSCUserStudent *> *)values;
- (void)removeStudents:(NSSet<FSCUserStudent *> *)values;

- (void)addTeachersObject:(FSCTeacher *)value;
- (void)removeTeachersObject:(FSCTeacher *)value;
- (void)addTeachers:(NSSet<FSCTeacher *> *)values;
- (void)removeTeachers:(NSSet<FSCTeacher *> *)values;

- (void)addTeachNodesObject:(FSCTeachNode *)value;
- (void)removeTeachNodesObject:(FSCTeachNode *)value;
- (void)addTeachNodes:(NSSet<FSCTeachNode *> *)values;
- (void)removeTeachNodes:(NSSet<FSCTeachNode *> *)values;

- (void)addTeachPlansObject:(FSCTeachPlan *)value;
- (void)removeTeachPlansObject:(FSCTeachPlan *)value;
- (void)addTeachPlans:(NSSet<FSCTeachPlan *> *)values;
- (void)removeTeachPlans:(NSSet<FSCTeachPlan *> *)values;

- (void)addUnreadRecordersObject:(FSCUnreadRecorder *)value;
- (void)removeUnreadRecordersObject:(FSCUnreadRecorder *)value;
- (void)addUnreadRecorders:(NSSet<FSCUnreadRecorder *> *)values;
- (void)removeUnreadRecorders:(NSSet<FSCUnreadRecorder *> *)values;

- (void)addVotesObject:(FSCVote *)value;
- (void)removeVotesObject:(FSCVote *)value;
- (void)addVotes:(NSSet<FSCVote *> *)values;
- (void)removeVotes:(NSSet<FSCVote *> *)values;

@end

NS_ASSUME_NONNULL_END
