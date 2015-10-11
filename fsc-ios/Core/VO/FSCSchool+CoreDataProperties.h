//
//  FSCSchool+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCSchool.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCSchool (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *domain;
@property (nullable, nonatomic, retain) NSNumber *year;
@property (nullable, nonatomic, retain) NSNumber *semester;
@property (nullable, nonatomic, retain) FSCUser *fscUser;

@end

NS_ASSUME_NONNULL_END
