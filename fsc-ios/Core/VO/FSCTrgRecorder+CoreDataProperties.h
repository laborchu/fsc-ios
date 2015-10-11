//
//  FSCTrgRecorder+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCTrgRecorder.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCTrgRecorder (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *createdBy;
@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSData *file;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *message;
@property (nullable, nonatomic, retain) NSNumber *sessionId;
@property (nullable, nonatomic, retain) NSNumber *status;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *type;
@property (nullable, nonatomic, retain) NSString *uuid;
@property (nullable, nonatomic, retain) NSNumber *voiceLength;
@property (nullable, nonatomic, retain) FSCTrgSession *tSession;

@end

NS_ASSUME_NONNULL_END
