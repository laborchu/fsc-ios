//
//  FSCUserStudent+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCUserStudent.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCUserStudent (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *classId;
@property (nullable, nonatomic, retain) NSNumber *gradeId;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSSet<FSCTeachNode *> *teachNodes;
@property (nullable, nonatomic, retain) FSCUser *whoChlid;

@end

@interface FSCUserStudent (CoreDataGeneratedAccessors)

- (void)addTeachNodesObject:(FSCTeachNode *)value;
- (void)removeTeachNodesObject:(FSCTeachNode *)value;
- (void)addTeachNodes:(NSSet<FSCTeachNode *> *)values;
- (void)removeTeachNodes:(NSSet<FSCTeachNode *> *)values;

@end

NS_ASSUME_NONNULL_END
