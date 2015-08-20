//
//  FSCApply.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCUser;

@interface FSCApply : NSManagedObject

@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * mobile;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) NSString * schoolName;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSString * subjectName;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * usename;
@property (nonatomic, retain) NSNumber * userType;
@property (nonatomic, retain) FSCUser *whoRecive;

@end
