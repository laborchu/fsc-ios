//
//  FSCActivity+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCActivity.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCActivity (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *actName;
@property (nullable, nonatomic, retain) NSNumber *actNum;
@property (nullable, nonatomic, retain) NSString *coverImg;
@property (nullable, nonatomic, retain) NSNumber *deadline;
@property (nullable, nonatomic, retain) NSString *desc;
@property (nullable, nonatomic, retain) NSNumber *endTime;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSNumber *startTime;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) FSCPublicRecorder *whichPubRecorder;
@property (nullable, nonatomic, retain) FSCUser *whoCanLook;

@end

NS_ASSUME_NONNULL_END
