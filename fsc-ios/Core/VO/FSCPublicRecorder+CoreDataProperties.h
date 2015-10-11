//
//  FSCPublicRecorder+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCPublicRecorder.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCPublicRecorder (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSData *file;
@property (nullable, nonatomic, retain) NSNumber *fromType;
@property (nullable, nonatomic, retain) NSNumber *fromUserId;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *message;
@property (nullable, nonatomic, retain) NSNumber *sessionId;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *toUserId;
@property (nullable, nonatomic, retain) NSNumber *type;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) FSCPublicSession *pSession;
@property (nullable, nonatomic, retain) NSSet<FSCActivity *> *whichActivity;
@property (nullable, nonatomic, retain) NSSet<FSCNotice *> *whichNotice;
@property (nullable, nonatomic, retain) NSSet<FSCVote *> *whichVote;

@end

@interface FSCPublicRecorder (CoreDataGeneratedAccessors)

- (void)addWhichActivityObject:(FSCActivity *)value;
- (void)removeWhichActivityObject:(FSCActivity *)value;
- (void)addWhichActivity:(NSSet<FSCActivity *> *)values;
- (void)removeWhichActivity:(NSSet<FSCActivity *> *)values;

- (void)addWhichNoticeObject:(FSCNotice *)value;
- (void)removeWhichNoticeObject:(FSCNotice *)value;
- (void)addWhichNotice:(NSSet<FSCNotice *> *)values;
- (void)removeWhichNotice:(NSSet<FSCNotice *> *)values;

- (void)addWhichVoteObject:(FSCVote *)value;
- (void)removeWhichVoteObject:(FSCVote *)value;
- (void)addWhichVote:(NSSet<FSCVote *> *)values;
- (void)removeWhichVote:(NSSet<FSCVote *> *)values;

@end

NS_ASSUME_NONNULL_END
