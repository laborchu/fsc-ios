//
//  FSCTeachNode.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCUser, FSCUserStudent;

@interface FSCTeachNode : NSManagedObject

@property (nonatomic, retain) NSNumber * classId;
@property (nonatomic, retain) NSNumber * corrected;
@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * imgText;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * nodeStatus;
@property (nonatomic, retain) NSNumber * resId;
@property (nonatomic, retain) NSNumber * schoolId;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) NSNumber * startTime;
@property (nonatomic, retain) NSNumber * step;
@property (nonatomic, retain) NSNumber * studentId;
@property (nonatomic, retain) NSNumber * subjectId;
@property (nonatomic, retain) NSNumber * submitted;
@property (nonatomic, retain) NSString * teacherName;
@property (nonatomic, retain) NSNumber * total;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) FSCUserStudent *whichStudent;
@property (nonatomic, retain) FSCUser *whosNode;

@end
