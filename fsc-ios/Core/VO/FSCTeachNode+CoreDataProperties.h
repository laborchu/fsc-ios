//
//  FSCTeachNode+CoreDataProperties.h
//  
//
//  Created by laborchu on 15/10/11.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FSCTeachNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface FSCTeachNode (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *classId;
@property (nullable, nonatomic, retain) NSNumber *corrected;
@property (nullable, nonatomic, retain) NSNumber *dataStatus;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *imgText;
@property (nullable, nonatomic, retain) NSNumber *modifiedDate;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *nodeStatus;
@property (nullable, nonatomic, retain) NSNumber *resId;
@property (nullable, nonatomic, retain) NSNumber *schoolId;
@property (nullable, nonatomic, retain) NSNumber *score;
@property (nullable, nonatomic, retain) NSNumber *startTime;
@property (nullable, nonatomic, retain) NSNumber *step;
@property (nullable, nonatomic, retain) NSNumber *studentId;
@property (nullable, nonatomic, retain) NSNumber *subjectId;
@property (nullable, nonatomic, retain) NSNumber *submitted;
@property (nullable, nonatomic, retain) NSString *teacherName;
@property (nullable, nonatomic, retain) NSNumber *total;
@property (nullable, nonatomic, retain) NSNumber *type;
@property (nullable, nonatomic, retain) FSCUserStudent *whichStudent;
@property (nullable, nonatomic, retain) FSCUser *whosNode;

@end

NS_ASSUME_NONNULL_END
