//
//  FSCSession+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCSession.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCSession (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *isDisturb;
@property (nullable, nonatomic, retain) NSNumber *isTop;
@property (nullable, nonatomic, retain) NSNumber *lastId;
@property (nullable, nonatomic, retain) NSString *lastMsg;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSNumber *msId;
@property (nullable, nonatomic, retain) NSString *msName;
@property (nullable, nonatomic, retain) NSNumber *readId;
@property (nullable, nonatomic, retain) NSNumber *sessionId;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSNumber *type;
@property (nullable, nonatomic, retain) NSNumber *unreadCount;
@property (nullable, nonatomic, retain) NSNumber *userId;
@property (nullable, nonatomic, retain) FSCClassSession *csession;
@property (nullable, nonatomic, retain) FSCUser *fscUser;
@property (nullable, nonatomic, retain) FSCGroupSession *gsession;
@property (nullable, nonatomic, retain) FSCPublicSession *psession;
@property (nullable, nonatomic, retain) FSCTrgSession *tsession;
@property (nullable, nonatomic, retain) FSCUserSession *usession;

@end

NS_ASSUME_NONNULL_END
