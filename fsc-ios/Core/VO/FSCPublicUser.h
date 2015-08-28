//
//  FSCPublicUser.h
//  
//
//  Created by laborchu on 15/8/24.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCPublicMenu, FSCUser;

@interface FSCPublicUser : NSManagedObject

@property (nonatomic, retain) NSString * code;
@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSString * groupCode;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * inputMenu;
@property (nonatomic, retain) NSNumber * inputMsg;
@property (nonatomic, retain) NSString * introduce;
@property (nonatomic, retain) NSNumber * isGroup;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *menus;
@property (nonatomic, retain) FSCUser *fscUser;
@end

@interface FSCPublicUser (CoreDataGeneratedAccessors)

- (void)addMenusObject:(FSCPublicMenu *)value;
- (void)removeMenusObject:(FSCPublicMenu *)value;
- (void)addMenus:(NSSet *)values;
- (void)removeMenus:(NSSet *)values;

@end
