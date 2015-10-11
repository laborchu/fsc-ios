//
//  FSCCustomUser+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCCustomUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCCustomUser (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *addStatus;
@property (nullable, nonatomic, retain) NSNumber *classId;
@property (nullable, nonatomic, retain) NSData *file;
@property (nullable, nonatomic, retain) NSNumber *gender;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *keyword;
@property (nullable, nonatomic, retain) NSNumber *linkmanId;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *portait;
@property (nullable, nonatomic, retain) NSString *schoolName;
@property (nullable, nonatomic, retain) NSNumber *userType;

@end

NS_ASSUME_NONNULL_END
