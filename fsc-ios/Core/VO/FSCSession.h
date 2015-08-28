//
//  FSCSession.h
//  
//
//  Created by laborchu on 15/8/26.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCClassSession, FSCGroupSession, FSCPublicSession, FSCTrgSession, FSCUser, FSCUserSession;

@interface FSCSession : NSManagedObject

@property (nonatomic, retain) NSNumber * dataStatus;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSNumber * isDisturb;
@property (nonatomic, retain) NSNumber * isTop;
@property (nonatomic, retain) NSNumber * lastId;
@property (nonatomic, retain) NSNumber * modifiedDate;
@property (nonatomic, retain) NSNumber * msId;
@property (nonatomic, retain) NSString * msName;
@property (nonatomic, retain) NSNumber * readId;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSNumber * userId;
@property (nonatomic, retain) NSNumber * unreadCount;
@property (nonatomic, retain) NSString * lastMsg;
@property (nonatomic, retain) FSCClassSession *csession;
@property (nonatomic, retain) FSCGroupSession *gsession;
@property (nonatomic, retain) FSCPublicSession *psession;
@property (nonatomic, retain) FSCTrgSession *tsession;
@property (nonatomic, retain) FSCUserSession *usession;
@property (nonatomic, retain) FSCUser *fscUser;

@end
