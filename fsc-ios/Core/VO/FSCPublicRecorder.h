//
//  FSCPublicRecorder.h
//  
//
//  Created by laborchu on 15/9/1.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCActivity, FSCNotice, FSCPublicSession, FSCVote;

@interface FSCPublicRecorder : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSData * file;
@property (nonatomic, retain) NSNumber * fromType;
@property (nonatomic, retain) NSNumber * fromUserId;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * message;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * toUserId;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) FSCPublicSession *pSession;
@property (nonatomic, retain) NSSet *whichActivity;
@property (nonatomic, retain) NSSet *whichNotice;
@property (nonatomic, retain) NSSet *whichVote;
@end

@interface FSCPublicRecorder (CoreDataGeneratedAccessors)

- (void)addWhichActivityObject:(FSCActivity *)value;
- (void)removeWhichActivityObject:(FSCActivity *)value;
- (void)addWhichActivity:(NSSet *)values;
- (void)removeWhichActivity:(NSSet *)values;

- (void)addWhichNoticeObject:(FSCNotice *)value;
- (void)removeWhichNoticeObject:(FSCNotice *)value;
- (void)addWhichNotice:(NSSet *)values;
- (void)removeWhichNotice:(NSSet *)values;

- (void)addWhichVoteObject:(FSCVote *)value;
- (void)removeWhichVoteObject:(FSCVote *)value;
- (void)addWhichVote:(NSSet *)values;
- (void)removeWhichVote:(NSSet *)values;

@end
