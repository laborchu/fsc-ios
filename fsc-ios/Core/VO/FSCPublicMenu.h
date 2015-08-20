//
//  FSCPublicMenu.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCPublicUser;

@interface FSCPublicMenu : NSManagedObject

@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * index;
@property (nonatomic, retain) NSNumber * isParent;
@property (nonatomic, retain) NSString * itemMsg;
@property (nonatomic, retain) NSString * itemName;
@property (nonatomic, retain) NSNumber * itemType;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSNumber * parentId;
@property (nonatomic, retain) NSNumber * publicId;
@property (nonatomic, retain) FSCPublicUser *whoHave;

@end
