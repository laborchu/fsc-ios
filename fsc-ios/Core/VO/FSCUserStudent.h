//
//  FSCUserStudent.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCTeachNode, FSCUser;

@interface FSCUserStudent : NSManagedObject

@property (nonatomic, retain) NSNumber * classId;
@property (nonatomic, retain) NSNumber * gradeId;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *teachNodes;
@property (nonatomic, retain) FSCUser *whoChlid;
@end

@interface FSCUserStudent (CoreDataGeneratedAccessors)

- (void)addTeachNodesObject:(FSCTeachNode *)value;
- (void)removeTeachNodesObject:(FSCTeachNode *)value;
- (void)addTeachNodes:(NSSet *)values;
- (void)removeTeachNodes:(NSSet *)values;

@end
