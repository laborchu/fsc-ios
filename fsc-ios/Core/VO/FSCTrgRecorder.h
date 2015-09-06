//
//  FSCTrgRecorder.h
//  
//
//  Created by laborchu on 15/8/31.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCTrgSession;

@interface FSCTrgRecorder : NSManagedObject

@property (nonatomic, retain) NSNumber * createdBy;
@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSData * file;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * message;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) NSNumber * voiceLength;
@property (nonatomic, retain) FSCTrgSession *whoChat;

@end
