//
//  FSCUnreadRecorder+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCUnreadRecorder.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCUnreadRecorder (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *notify;
@property (nullable, nonatomic, retain) NSNumber *recorderType;
@property (nullable, nonatomic, retain) NSNumber *sessionId;
@property (nullable, nonatomic, retain) FSCUser *whoUnRead;

@end

NS_ASSUME_NONNULL_END
