//
//  FSCActivity.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCPublicRecorder, FSCUser;

@interface FSCActivity : NSManagedObject

@property (nonatomic, retain) NSString * actName;
@property (nonatomic, retain) NSNumber * actNum;
@property (nonatomic, retain) NSString * coverImg;
@property (nonatomic, retain) NSNumber * deadline;
@property (nonatomic, retain) NSString * desc;
@property (nonatomic, retain) NSNumber * endTime;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSNumber * startTime;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) FSCPublicRecorder *whichPubRecorder;
@property (nonatomic, retain) FSCUser *whoCanLook;

@end
