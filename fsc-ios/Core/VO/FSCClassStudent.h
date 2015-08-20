//
//  FSCClassStudent.h
//  
//
//  Created by laborchu on 15/8/20.
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
@property (nonatomic, retain) FSCClass *fscClass;

@end
