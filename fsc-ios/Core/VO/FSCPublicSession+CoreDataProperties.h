//
//  FSCPublicSession+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCPublicSession.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCPublicSession (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *publicCode;
@property (nullable, nonatomic, retain) NSNumber *publicId;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *userId;
@property (nullable, nonatomic, retain) FSCSession *parentSession;
@property (nullable, nonatomic, retain) NSSet<FSCPublicRecorder *> *recorders;

@end

@interface FSCPublicSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCPublicRecorder *)value;
- (void)removeRecordersObject:(FSCPublicRecorder *)value;
- (void)addRecorders:(NSSet<FSCPublicRecorder *> *)values;
- (void)removeRecorders:(NSSet<FSCPublicRecorder *> *)values;

@end

NS_ASSUME_NONNULL_END
