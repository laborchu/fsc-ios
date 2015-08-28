//
//  FSCGroupUser.h
//  
//
//  Created by laborchu on 15/8/26.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCGroupSession;

@interface FSCGroupUser : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * inviterId;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * userId;
@property (nonatomic, retain) FSCGroupSession *gSession;

@end
