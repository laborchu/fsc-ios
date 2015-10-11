//
//  FSCClass+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCClass (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *classname;
@property (nullable, nonatomic, retain) NSNumber *gradeId;
@property (nullable, nonatomic, retain) NSString *gradeName;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *monitorUrl;
@property (nullable, nonatomic, retain) NSNumber *semester;
@property (nullable, nonatomic, retain) NSNumber *year;
@property (nullable, nonatomic, retain) NSSet<FSCClassStudent *> *classStudents;
@property (nullable, nonatomic, retain) NSSet<FSCClassUser *> *classUsers;
@property (nullable, nonatomic, retain) FSCUser *fscUser;

@end

@interface FSCClass (CoreDataGeneratedAccessors)

- (void)addClassStudentsObject:(FSCClassStudent *)value;
- (void)removeClassStudentsObject:(FSCClassStudent *)value;
- (void)addClassStudents:(NSSet<FSCClassStudent *> *)values;
- (void)removeClassStudents:(NSSet<FSCClassStudent *> *)values;

- (void)addClassUsersObject:(FSCClassUser *)value;
- (void)removeClassUsersObject:(FSCClassUser *)value;
- (void)addClassUsers:(NSSet<FSCClassUser *> *)values;
- (void)removeClassUsers:(NSSet<FSCClassUser *> *)values;

@end

NS_ASSUME_NONNULL_END
