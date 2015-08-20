//
//  FSCClassSession.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCClassChatUser, FSCClassRecorder, FSCSession;

@interface FSCClassSession : NSManagedObject

@property (nonatomic, retain) NSNumber * classId;
@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) FSCSession *parentSession;
@property (nonatomic, retain) NSSet *recorders;
@property (nonatomic, retain) NSSet *users;
@end

@interface FSCClassSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCClassRecorder *)value;
- (void)removeRecordersObject:(FSCClassRecorder *)value;
- (void)addRecorders:(NSSet *)values;
- (void)removeRecorders:(NSSet *)values;

- (void)addUsersObject:(FSCClassChatUser *)value;
- (void)removeUsersObject:(FSCClassChatUser *)value;
- (void)addUsers:(NSSet *)values;
- (void)removeUsers:(NSSet *)values;

@end
