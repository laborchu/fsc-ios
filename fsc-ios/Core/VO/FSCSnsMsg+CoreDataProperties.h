//
//  FSCSnsMsg+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCSnsMsg.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCSnsMsg (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *commentCount;
@property (nullable, nonatomic, retain) NSNumber *createdBy;
@property (nullable, nonatomic, retain) NSNumber *createdDate;
@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *msg;
@property (nullable, nonatomic, retain) NSNumber *msgType;
@property (nullable, nonatomic, retain) NSNumber *praiseCount;
@property (nullable, nonatomic, retain) NSString *resPath;
@property (nullable, nonatomic, retain) NSNumber *sinaId;
@property (nullable, nonatomic, retain) NSString *source;
@property (nullable, nonatomic, retain) NSNumber *timestamp;
@property (nullable, nonatomic, retain) NSSet<FSCSnsComment *> *comments;
@property (nullable, nonatomic, retain) NSSet<FSCSnsPraise *> *praises;
@property (nullable, nonatomic, retain) FSCUser *whoCanLook;

@end

@interface FSCSnsMsg (CoreDataGeneratedAccessors)

- (void)addCommentsObject:(FSCSnsComment *)value;
- (void)removeCommentsObject:(FSCSnsComment *)value;
- (void)addComments:(NSSet<FSCSnsComment *> *)values;
- (void)removeComments:(NSSet<FSCSnsComment *> *)values;

- (void)addPraisesObject:(FSCSnsPraise *)value;
- (void)removePraisesObject:(FSCSnsPraise *)value;
- (void)addPraises:(NSSet<FSCSnsPraise *> *)values;
- (void)removePraises:(NSSet<FSCSnsPraise *> *)values;

@end

NS_ASSUME_NONNULL_END
