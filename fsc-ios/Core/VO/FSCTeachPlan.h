//
//  FSCTeachPlan.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCUser;

@interface FSCTeachPlan : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * planName;
@property (nonatomic, retain) FSCUser *whoHave;

@end
