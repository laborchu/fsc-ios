//
//  FSCTeachPlan+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCTeachPlan.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCTeachPlan (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *planName;
@property (nullable, nonatomic, retain) FSCUser *whoHave;

@end

NS_ASSUME_NONNULL_END
