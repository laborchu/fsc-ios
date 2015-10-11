//
//  FSCGroupSession+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCGroupSession.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCGroupSession (CoreDataProperties)

@property (nullable, nonatomic, retain) NSData *avatar;
@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *leaderId;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *nameStatus;
@property (nullable, nonatomic, retain) NSString *portrait;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) FSCSession *parentSession;
@property (nullable, nonatomic, retain) NSSet<FSCGroupRecorder *> *recorders;
@property (nullable, nonatomic, retain) NSSet<FSCGroupUser *> *users;

@end

@interface FSCGroupSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCGroupRecorder *)value;
- (void)removeRecordersObject:(FSCGroupRecorder *)value;
- (void)addRecorders:(NSSet<FSCGroupRecorder *> *)values;
- (void)removeRecorders:(NSSet<FSCGroupRecorder *> *)values;

- (void)addUsersObject:(FSCGroupUser *)value;
- (void)removeUsersObject:(FSCGroupUser *)value;
- (void)addUsers:(NSSet<FSCGroupUser *> *)values;
- (void)removeUsers:(NSSet<FSCGroupUser *> *)values;

@end

NS_ASSUME_NONNULL_END
