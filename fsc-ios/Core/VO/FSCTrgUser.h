//
//  FSCTrgUser.h
//  
//
//  Created by laborchu on 15/8/31.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCTrgSession;

@interface FSCTrgUser : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) NSString * schoolName;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * userId;
@property (nonatomic, retain) NSNumber * userType;
@property (nonatomic, retain) FSCTrgSession *tSession;

@end
