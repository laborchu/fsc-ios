//
//  FSCGroupSession.h
//  
//
//  Created by laborchu on 15/9/1.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCGroupRecorder, FSCGroupUser, FSCSession;

@interface FSCGroupSession : NSManagedObject

@property (nonatomic, retain) NSData * avatar;
@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * leaderId;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) NSNumber * nameStatus;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) FSCSession *parentSession;
@property (nonatomic, retain) NSSet *recorders;
@property (nonatomic, retain) NSSet *users;
@end

@interface FSCGroupSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCGroupRecorder *)value;
- (void)removeRecordersObject:(FSCGroupRecorder *)value;
- (void)addRecorders:(NSSet *)values;
- (void)removeRecorders:(NSSet *)values;

- (void)addUsersObject:(FSCGroupUser *)value;
- (void)removeUsersObject:(FSCGroupUser *)value;
- (void)addUsers:(NSSet *)values;
- (void)removeUsers:(NSSet *)values;

@end
