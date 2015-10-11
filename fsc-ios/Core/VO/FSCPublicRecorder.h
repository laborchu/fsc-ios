//
//  FSCPublicRecorder.h
//  
//
//  Created by laborchu on 15/10/11.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FSCActivity, FSCNotice, FSCPublicSession, FSCVote;

NS_ASSUME_NONNULL_BEGIN

@interface FSCPublicRecorder : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "FSCPublicRecorder+CoreDataProperties.h"
