//
//  FSCUser.m
//  
//
//  Created by laborchu on 15/8/9.
//
//

#import "FSCUser.h"
#import "FSCActivity.h"
#import "FSCApply.h"
#import "FSCClass.h"
#import "FSCLinkman.h"
#import "FSCNotice.h"
#import "FSCPublicUser.h"
#import "FSCSession.h"
#import "FSCSnsMsg.h"
#import "FSCTeachNode.h"
#import "FSCTeachPlan.h"
#import "FSCTeacher.h"
#import "FSCUnreadRecorder.h"
#import "FSCUserStudent.h"
#import "FSCVote.h"


@implementation FSCUser

@dynamic address;
@dynamic email;
@dynamic gender;
@dynamic id;
@dynamic name;
@dynamic password;
@dynamic portrait;
@dynamic pubNotify;
@dynamic schoolId;
@dynamic schoolName;
@dynamic username;
@dynamic userType;
@dynamic uuid;
@dynamic phaseId;
@dynamic token;
@dynamic activities;
@dynamic applys;
@dynamic classes;
@dynamic linkmanList;
@dynamic notices;
@dynamic publicUsers;
@dynamic sessions;
@dynamic snsMsgs;
@dynamic students;
@dynamic teachers;
@dynamic teachNodes;
@dynamic teachPlans;
@dynamic unreadRecorders;
@dynamic votes;

@end
