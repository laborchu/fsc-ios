//
//  FSCTrgSession.h
//  
//
//  Created by laborchu on 15/8/31.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCSession, FSCTrgRecorder, FSCTrgUser;

@interface FSCTrgSession : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * gradeId;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * schoolId;
@property (nonatomic, retain) NSNumber * semester;
@property (nonatomic, retain) NSNumber * sessionType;
@property (nonatomic, retain) NSNumber * subjectId;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) NSNumber * year;
@property (nonatomic, retain) FSCSession *parentSession;
@property (nonatomic, retain) NSSet *recorders;
@property (nonatomic, retain) NSSet *users;
@end

@interface FSCTrgSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCTrgRecorder *)value;
- (void)removeRecordersObject:(FSCTrgRecorder *)value;
- (void)addRecorders:(NSSet *)values;
- (void)removeRecorders:(NSSet *)values;

- (void)addUsersObject:(FSCTrgUser *)value;
- (void)removeUsersObject:(FSCTrgUser *)value;
- (void)addUsers:(NSSet *)values;
- (void)removeUsers:(NSSet *)values;

@end
