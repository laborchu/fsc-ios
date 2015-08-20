//
//  FSCSnsPraise.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCSnsMsg;

@interface FSCSnsPraise : NSManagedObject

@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * msgId;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * userId;
@property (nonatomic, retain) FSCSnsMsg *whoGet;

@end
