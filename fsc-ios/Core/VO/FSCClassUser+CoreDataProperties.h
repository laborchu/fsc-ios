//
//  FSCClassUser+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCClassUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCClassUser (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *classId;
@property (nullable, nonatomic, retain) NSNumber *gender;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *portrait;
@property (nullable, nonatomic, retain) NSString *schoolName;
@property (nullable, nonatomic, retain) NSString *studentName;
@property (nullable, nonatomic, retain) NSString *username;
@property (nullable, nonatomic, retain) NSNumber *userStatus;
@property (nullable, nonatomic, retain) NSNumber *userType;
@property (nullable, nonatomic, retain) FSCClass *fscClass;

@end

NS_ASSUME_NONNULL_END
