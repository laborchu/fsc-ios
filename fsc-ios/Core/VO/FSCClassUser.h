//
//  FSCClassUser.h
//  
//
//  Created by laborchu on 15/8/20.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCClass;

@interface FSCClassUser : NSManagedObject

@property (nonatomic, retain) NSNumber * classId;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) NSString * schoolName;
@property (nonatomic, retain) NSString * studentName;
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSNumber * userStatus;
@property (nonatomic, retain) NSNumber * userType;
@property (nonatomic, retain) FSCClass *fscClass;

@end
