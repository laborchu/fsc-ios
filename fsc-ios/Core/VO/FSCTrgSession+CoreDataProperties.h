//
//  FSCTrgSession+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCTrgSession.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCTrgSession (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *gradeId;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *schoolId;
@property (nullable, nonatomic, retain) NSNumber *semester;
@property (nullable, nonatomic, retain) NSNumber *sessionType;
@property (nullable, nonatomic, retain) NSNumber *subjectId;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) NSNumber *year;
@property (nullable, nonatomic, retain) FSCSession *parentSession;
@property (nullable, nonatomic, retain) NSSet<FSCTrgRecorder *> *recorders;
@property (nullable, nonatomic, retain) NSSet<FSCTrgUser *> *users;

@end

@interface FSCTrgSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCTrgRecorder *)value;
- (void)removeRecordersObject:(FSCTrgRecorder *)value;
- (void)addRecorders:(NSSet<FSCTrgRecorder *> *)values;
- (void)removeRecorders:(NSSet<FSCTrgRecorder *> *)values;

- (void)addUsersObject:(FSCTrgUser *)value;
- (void)removeUsersObject:(FSCTrgUser *)value;
- (void)addUsers:(NSSet<FSCTrgUser *> *)values;
- (void)removeUsers:(NSSet<FSCTrgUser *> *)values;

@end

NS_ASSUME_NONNULL_END
