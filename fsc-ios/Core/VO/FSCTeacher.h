//
//  FSCTeacher.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCUser;

@interface FSCTeacher : NSManagedObject

@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * mobile;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) NSNumber * subjectId;
@property (nonatomic, retain) FSCUser *whoWorhWith;

@end
