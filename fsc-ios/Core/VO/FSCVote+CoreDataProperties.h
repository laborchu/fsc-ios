//
//  FSCVote+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCVote.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCVote (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *coverImg;
@property (nullable, nonatomic, retain) NSNumber *deadline;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSString *quesList;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) NSData *voteData;
@property (nullable, nonatomic, retain) NSString *voteName;
@property (nullable, nonatomic, retain) NSNumber *voteNum;
@property (nullable, nonatomic, retain) FSCPublicRecorder *whichRecorder;
@property (nullable, nonatomic, retain) FSCUser *whoCanLook;

@end

NS_ASSUME_NONNULL_END
