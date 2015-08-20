//
//  FSCCustomUser.h
//  
//
//  Created by laborchu on 15/7/29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface FSCCustomUser : NSManagedObject

@property (nonatomic, retain) NSNumber * addStatus;
@property (nonatomic, retain) NSNumber * classId;
@property (nonatomic, retain) NSData * file;
@property (nonatomic, retain) NSNumber * gender;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * keyword;
@property (nonatomic, retain) NSNumber * linkmanId;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * portait;
@property (nonatomic, retain) NSString * schoolName;
@property (nonatomic, retain) NSNumber * userType;

@end
