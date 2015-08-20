//
//  FSCVote.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCPublicRecorder, FSCUser;

@interface FSCVote : NSManagedObject

@property (nonatomic, retain) NSString * coverImg;
@property (nonatomic, retain) NSNumber * deadline;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * quesList;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSData * voteData;
@property (nonatomic, retain) NSString * voteName;
@property (nonatomic, retain) NSNumber * voteNum;
@property (nonatomic, retain) FSCPublicRecorder *whichRecorder;
@property (nonatomic, retain) FSCUser *whoCanLook;

@end
