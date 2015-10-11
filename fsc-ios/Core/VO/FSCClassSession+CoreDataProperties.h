//
//  FSCClassSession+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCClassSession.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCClassSession (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *classId;
@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) FSCSession *parentSession;
@property (nullable, nonatomic, retain) NSSet<FSCClassRecorder *> *recorders;
@property (nullable, nonatomic, retain) NSSet<FSCClassChatUser *> *users;

@end

@interface FSCClassSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCClassRecorder *)value;
- (void)removeRecordersObject:(FSCClassRecorder *)value;
- (void)addRecorders:(NSSet<FSCClassRecorder *> *)values;
- (void)removeRecorders:(NSSet<FSCClassRecorder *> *)values;

- (void)addUsersObject:(FSCClassChatUser *)value;
- (void)removeUsersObject:(FSCClassChatUser *)value;
- (void)addUsers:(NSSet<FSCClassChatUser *> *)values;
- (void)removeUsers:(NSSet<FSCClassChatUser *> *)values;

@end

NS_ASSUME_NONNULL_END
