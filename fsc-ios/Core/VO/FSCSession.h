//
//  FSCSession.h
//  
//
//  Created by laborchu on 15/10/11.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCClassSession, FSCGroupSession, FSCPublicSession, FSCTrgSession, FSCUser, FSCUserSession;

NS_ASSUME_NONNULL_BEGIN

@interface FSCSession : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "FSCSession+CoreDataProperties.h"
