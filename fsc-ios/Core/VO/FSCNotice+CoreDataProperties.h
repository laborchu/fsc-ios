//
//  FSCNotice+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCNotice.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCNotice (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *coverImg;
@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSString *noticeType;
@property (nullable, nonatomic, retain) NSString *summary;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) FSCPublicRecorder *whichRecorder;
@property (nullable, nonatomic, retain) FSCUser *whoCanLook;

@end

NS_ASSUME_NONNULL_END
