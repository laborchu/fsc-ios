//
//  FSCClass.h
//  
//
//  Created by laborchu on 15/8/20.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCClassStudent, FSCClassUser, FSCUser;

@interface FSCClass : NSManagedObject

@property (nonatomic, retain) NSString * classname;
@property (nonatomic, retain) NSNumber * gradeId;
@property (nonatomic, retain) NSString * gradeName;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * monitorUrl;
@property (nonatomic, retain) NSNumber * semester;
@property (nonatomic, retain) NSNumber * year;
@property (nonatomic, retain) NSSet *classUsers;
@property (nonatomic, retain) NSSet *classStudents;
@property (nonatomic, retain) FSCUser *whoControl;
@end

@interface FSCClass (CoreDataGeneratedAccessors)

- (void)addClassUsersObject:(FSCClassUser *)value;
- (void)removeClassUsersObject:(FSCClassUser *)value;
- (void)addClassUsers:(NSSet *)values;
- (void)removeClassUsers:(NSSet *)values;

- (void)addClassStudentsObject:(FSCClassStudent *)value;
- (void)removeClassStudentsObject:(FSCClassStudent *)value;
- (void)addClassStudents:(NSSet *)values;
- (void)removeClassStudents:(NSSet *)values;

@end
