//
//  FSCUnreadRecorder.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCUser;

@interface FSCUnreadRecorder : NSManagedObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * notify;
@property (nonatomic, retain) NSNumber * recorderType;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) FSCUser *whoUnRead;

@end
