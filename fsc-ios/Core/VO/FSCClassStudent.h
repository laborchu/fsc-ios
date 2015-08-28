//
//  FSCClassStudent.h
//  
//
//  Created by laborchu on 15/8/25.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCClass;

@interface FSCClassStudent : NSManagedObject

@property (nonatomic, retain) NSNumber * classId;
@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * gradeId;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * userType;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSString * schoolName;
@property (nonatomic, retain) NSString * portrait;
@property (nonatomic, retain) FSCClass *fscClass;

@end
