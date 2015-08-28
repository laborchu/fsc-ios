//
//  FSCGroupRecorder.h
//  
//
//  Created by laborchu on 15/8/26.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCGroupSession;

@interface FSCGroupRecorder : NSManagedObject

@property (nonatomic, retain) NSNumber * createBy;
@property (nonatomic, retain) NSNumber * createDate;
@property (nonatomic, retain) NSData * file;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * message;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) NSNumber * voiceLength;
@property (nonatomic, retain) FSCGroupSession *gSession;

@end
