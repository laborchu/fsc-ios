//
//  FSCPublicUser+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCPublicUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCPublicUser (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *code;
@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSString *groupCode;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSNumber *inputMenu;
@property (nullable, nonatomic, retain) NSNumber *inputMsg;
@property (nullable, nonatomic, retain) NSString *introduce;
@property (nullable, nonatomic, retain) NSNumber *isGroup;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) FSCUser *fscUser;
@property (nullable, nonatomic, retain) NSSet<FSCPublicMenu *> *menus;

@end

@interface FSCPublicUser (CoreDataGeneratedAccessors)

- (void)addMenusObject:(FSCPublicMenu *)value;
- (void)removeMenusObject:(FSCPublicMenu *)value;
- (void)addMenus:(NSSet<FSCPublicMenu *> *)values;
- (void)removeMenus:(NSSet<FSCPublicMenu *> *)values;

@end

NS_ASSUME_NONNULL_END
