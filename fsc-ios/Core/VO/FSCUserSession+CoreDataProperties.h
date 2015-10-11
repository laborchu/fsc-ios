//
//  FSCUserSession+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCUserSession.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCUserSession (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *fromUserId;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *toUserId;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) FSCSession *fscSession;
@property (nullable, nonatomic, retain) NSSet<FSCUserRecorder *> *recorders;

@end

@interface FSCUserSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCUserRecorder *)value;
- (void)removeRecordersObject:(FSCUserRecorder *)value;
- (void)addRecorders:(NSSet<FSCUserRecorder *> *)values;
- (void)removeRecorders:(NSSet<FSCUserRecorder *> *)values;

@end

NS_ASSUME_NONNULL_END
