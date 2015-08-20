//
//  FSCSnsMsg.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCSnsComment, FSCSnsPraise, FSCUser;

@interface FSCSnsMsg : NSManagedObject

@property (nonatomic, retain) NSNumber * commentCount;
@property (nonatomic, retain) NSNumber * createdBy;
@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * msg;
@property (nonatomic, retain) NSNumber * msgType;
@property (nonatomic, retain) NSNumber * praiseCount;
@property (nonatomic, retain) NSString * resPath;
@property (nonatomic, retain) NSNumber * sinaId;
@property (nonatomic, retain) NSString * source;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSSet *comments;
@property (nonatomic, retain) NSSet *praises;
@property (nonatomic, retain) FSCUser *whoCanLook;
@end

@interface FSCSnsMsg (CoreDataGeneratedAccessors)

- (void)addCommentsObject:(FSCSnsComment *)value;
- (void)removeCommentsObject:(FSCSnsComment *)value;
- (void)addComments:(NSSet *)values;
- (void)removeComments:(NSSet *)values;

- (void)addPraisesObject:(FSCSnsPraise *)value;
- (void)removePraisesObject:(FSCSnsPraise *)value;
- (void)addPraises:(NSSet *)values;
- (void)removePraises:(NSSet *)values;

@end
