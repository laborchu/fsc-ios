//
//  FSCPublicSession.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCPublicRecorder, FSCSession;

@interface FSCPublicSession : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * publicCode;
@property (nonatomic, retain) NSNumber * publicId;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * userId;
@property (nonatomic, retain) FSCSession *parentSession;
@property (nonatomic, retain) NSSet *recorders;
@end

@interface FSCPublicSession (CoreDataGeneratedAccessors)

- (void)addRecordersObject:(FSCPublicRecorder *)value;
- (void)removeRecordersObject:(FSCPublicRecorder *)value;
- (void)addRecorders:(NSSet *)values;
- (void)removeRecorders:(NSSet *)values;

@end
