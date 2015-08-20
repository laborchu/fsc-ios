//
//  FSCNotice.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCPublicRecorder, FSCUser;

@interface FSCNotice : NSManagedObject

@property (nonatomic, retain) NSString * coverImg;
@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * noticeType;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) FSCPublicRecorder *whichRecorder;
@property (nonatomic, retain) FSCUser *whoCanLook;

@end
