//
//  FSCUserSession.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCSession, FSCUserRecorder;

@interface FSCUserSession : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * fromUserId;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * toUserId;
@property (nonatomic, retain) FSCSession *parentSession;
@property (nonatomic, retain) NSSet *recorders;
@end

@interface FSCUserSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCUserRecorder *)value;
- (void)removeRecordersObject:(FSCUserRecorder *)value;
- (void)addRecorders:(NSSet *)values;
- (void)removeRecorders:(NSSet *)values;

@end
