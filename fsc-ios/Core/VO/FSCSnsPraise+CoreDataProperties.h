//
//  FSCSnsPraise+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCSnsPraise.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCSnsPraise (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *msgId;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *userId;
@property (nullable, nonatomic, retain) FSCSnsMsg *whoGet;

@end

NS_ASSUME_NONNULL_END
