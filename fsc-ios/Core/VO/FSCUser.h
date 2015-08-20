//
//  FSCUser.h
//  
//
//  Created by laborchu on 15/8/9.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCActivity, FSCApply, FSCClass, FSCLinkman, FSCNotice, FSCPublicUser, FSCSession, FSCSnsMsg, FSCTeachNode, FSCTeachPlan, FSCTeacher, FSCUnreadRecorder, FSCUserStudent, FSCVote;

@interface FSCUser : NSManagedObject

@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) NSNumber * pubNotify;
@property (nonatomic, retain) NSNumber * schoolId;
@property (nonatomic, retain) NSString * schoolName;
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSNumber * userType;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) NSNumber * phaseId;
@property (nonatomic, retain) NSString * token;
@property (nonatomic, retain) NSSet *activities;
@property (nonatomic, retain) NSSet *applys;
@property (nonatomic, retain) NSSet *classes;
@property (nonatomic, retain) NSSet *linkmanList;
@property (nonatomic, retain) NSSet *notices;
@property (nonatomic, retain) NSSet *publicUsers;
@property (nonatomic, retain) NSSet *sessions;
@property (nonatomic, retain) NSSet *snsMsgs;
@property (nonatomic, retain) NSSet *students;
@property (nonatomic, retain) NSSet *teachers;
@property (nonatomic, retain) NSSet *teachNodes;
@property (nonatomic, retain) NSSet *teachPlans;
@property (nonatomic, retain) NSSet *unreadRecorders;
@property (nonatomic, retain) NSSet *votes;
@end

@interface FSCUser (CoreDataGeneratedAccessors)

- (void)addActivitiesObject:(FSCActivity *)value;
- (void)removeActivitiesObject:(FSCActivity *)value;
- (void)addActivities:(NSSet *)values;
- (void)removeActivities:(NSSet *)values;

- (void)addApplysObject:(FSCApply *)value;
- (void)removeApplysObject:(FSCApply *)value;
- (void)addApplys:(NSSet *)values;
- (void)removeApplys:(NSSet *)values;

- (void)addClassesObject:(FSCClass *)value;
- (void)removeClassesObject:(FSCClass *)value;
- (void)addClasses:(NSSet *)values;
- (void)removeClasses:(NSSet *)values;

- (void)addLinkmanListObject:(FSCLinkman *)value;
- (void)removeLinkmanListObject:(FSCLinkman *)value;
- (void)addLinkmanList:(NSSet *)values;
- (void)removeLinkmanList:(NSSet *)values;

- (void)addNoticesObject:(FSCNotice *)value;
- (void)removeNoticesObject:(FSCNotice *)value;
- (void)addNotices:(NSSet *)values;
- (void)removeNotices:(NSSet *)values;

- (void)addPublicUsersObject:(FSCPublicUser *)value;
- (void)removePublicUsersObject:(FSCPublicUser *)value;
- (void)addPublicUsers:(NSSet *)values;
- (void)removePublicUsers:(NSSet *)values;

- (void)addSessionsObject:(FSCSession *)value;
- (void)removeSessionsObject:(FSCSession *)value;
- (void)addSessions:(NSSet *)values;
- (void)removeSessions:(NSSet *)values;

- (void)addSnsMsgsObject:(FSCSnsMsg *)value;
- (void)removeSnsMsgsObject:(FSCSnsMsg *)value;
- (void)addSnsMsgs:(NSSet *)values;
- (void)removeSnsMsgs:(NSSet *)values;

- (void)addStudentsObject:(FSCUserStudent *)value;
- (void)removeStudentsObject:(FSCUserStudent *)value;
- (void)addStudents:(NSSet *)values;
- (void)removeStudents:(NSSet *)values;

- (void)addTeachersObject:(FSCTeacher *)value;
- (void)removeTeachersObject:(FSCTeacher *)value;
- (void)addTeachers:(NSSet *)values;
- (void)removeTeachers:(NSSet *)values;

- (void)addTeachNodesObject:(FSCTeachNode *)value;
- (void)removeTeachNodesObject:(FSCTeachNode *)value;
- (void)addTeachNodes:(NSSet *)values;
- (void)removeTeachNodes:(NSSet *)values;

- (void)addTeachPlansObject:(FSCTeachPlan *)value;
- (void)removeTeachPlansObject:(FSCTeachPlan *)value;
- (void)addTeachPlans:(NSSet *)values;
- (void)removeTeachPlans:(NSSet *)values;

- (void)addUnreadRecordersObject:(FSCUnreadRecorder *)value;
- (void)removeUnreadRecordersObject:(FSCUnreadRecorder *)value;
- (void)addUnreadRecorders:(NSSet *)values;
- (void)removeUnreadRecorders:(NSSet *)values;

- (void)addVotesObject:(FSCVote *)value;
- (void)removeVotesObject:(FSCVote *)value;
- (void)addVotes:(NSSet *)values;
- (void)removeVotes:(NSSet *)values;

@end
