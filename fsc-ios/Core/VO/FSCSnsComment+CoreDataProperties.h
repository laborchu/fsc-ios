//
//  FSCSnsComment+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCSnsComment.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCSnsComment (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *comment;
@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *fromUser;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *msgId;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *toUser;
@property (nullable, nonatomic, retain) FSCSnsMsg *whoHave;

@end

NS_ASSUME_NONNULL_END
