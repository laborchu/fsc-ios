//
//  FSCGroupUser+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCGroupUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCGroupUser (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *inviterId;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSNumber *sessionId;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *userId;
@property (nullable, nonatomic, retain) FSCGroupSession *gSession;

@end

NS_ASSUME_NONNULL_END
