//
//  FSCPublicMenu+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCPublicMenu.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCPublicMenu (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *index;
@property (nullable, nonatomic, retain) NSNumber *isParent;
@property (nullable, nonatomic, retain) NSString *itemMsg;
@property (nullable, nonatomic, retain) NSString *itemName;
@property (nullable, nonatomic, retain) NSNumber *itemType;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSNumber *parentId;
@property (nullable, nonatomic, retain) NSNumber *publicId;
@property (nullable, nonatomic, retain) FSCPublicUser *publicUser;

@end

NS_ASSUME_NONNULL_END
