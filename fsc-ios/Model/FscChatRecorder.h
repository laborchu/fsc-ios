//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FscChatRecorder : NSObject

@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * uuid;
@property (nonatomic, retain) NSNumber * createdBy;
@property (nonatomic, retain) NSNumber * createdDate;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSNumber * msId;
@property (nonatomic, retain) NSNumber * voiceLength;
@property (nonatomic, retain) NSString * message;
@property (nonatomic, retain) NSNumber * fromType;
@property (nonatomic, retain) NSNumber * status;
@property (nonatomic, retain) NSNumber * timestamp;
@property (nonatomic, retain) NSNumber * sessionId;
@property (nonatomic, retain) NSData * file;

@end
