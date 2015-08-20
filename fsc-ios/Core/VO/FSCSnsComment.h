//
//  FSCSnsComment.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCSnsMsg;

@interface FSCSnsComment : NSManagedObject

@property (nonatomic, retain) NSString * comment;
@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * fromUser;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * msgId;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * toUser;
@property (nonatomic, retain) FSCSnsMsg *whoHave;

@end
