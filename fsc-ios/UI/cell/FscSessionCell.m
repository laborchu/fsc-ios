//
//  FscSessionCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/1.
//  Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIActivityIndicator-for-SDWebImage/UIImageView+UIActivityIndicatorForSDWebImage.h>
#import "FscSessionCell.h"
#import "FSCSession.h"
#import "FscConstants.h"
#import "LcUtils.h"
#import "FSCLinkman.h"
#import "FSCGroupSession+CoreDataProperties.h"
#import "FSCImageAssembled.h"
#import "FscDataManager.h"
#import "FSCGroupUser.h"
#import "BbiUtils.h"
#import "FSCPublicSession.h"
#import "FscColorDefine.h"
#import "UIColor+Hex.h"
#import "JSBadgeView.h"

@implementation FscSessionCell{
    JSBadgeView *_badge;
}


- (void)setCellWithSession:(FSCSession *)session {
    if ([session.isDisturb boolValue]) {
        self.sessionStatusImg.hidden = NO;
    } else {
        self.sessionStatusImg.hidden = YES;
    }
    if(!_badge){
        _badge = [[JSBadgeView alloc] initWithParentView:self.badgeView alignment:JSBadgeViewAlignmentCenter];
        _badge.badgeBackgroundColor = [UIColor colorWithHexString:@"#d3321b"];
    }
    if([session.unreadCount intValue] >0){
        _badge.hidden = NO;
        _badge.badgeText = [session.unreadCount stringValue];
    }else{
        _badge.hidden = YES;
    }

    self.sessionName.text = session.msName;
    self.sessionName.lineBreakMode = (NSLineBreakByWordWrapping | NSLineBreakByTruncatingTail);

    self.lastMsg.text = session.lastMsg;
    self.lastMsg.lineBreakMode = (NSLineBreakByWordWrapping | NSLineBreakByTruncatingTail);

    self.lastMsgDate.text = [self stringFromTimestamp:[session.modifiedDate longLongValue]];

    switch ([session.type integerValue]) {
        case SESSION_TYPE_USER_CHAT: {
            FSCLinkman *fscLinkman = [LcUtils getFscLinkman:session.msId];
            NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", RES_SERVER, fscLinkman.portrait]];
            [self.sessionAvatar setImageWithURL:url placeholderImage:[UIImage imageNamed:@"default_avatar"] usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
            break;
        }
        case SESSION_TYPE_GROUP_CHAT: {
            if (session.gsession.avatar) {
                [self.sessionAvatar setImage:[UIImage imageWithData:session.gsession.avatar]];
            } else {
                [self.sessionAvatar setImage:[UIImage imageNamed:@"default_avatar"]];
                dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
                    NSMutableArray *imagePathArray = [NSMutableArray array];
                    for (FSCGroupUser *gUser in session.gsession.users) {
                        FSCLinkman *fscLinkman = [LcUtils getFscLinkman:gUser.userId];
                        if (fscLinkman) {
                            [imagePathArray addObject:fscLinkman];
                        }
                    }
                    UIImage *avatar = [FSCImageAssembled assembledImage:imagePathArray];

                    dispatch_async(dispatch_get_main_queue(), ^{
                        [self.sessionAvatar setImage:avatar];

                    });

                    NSData *imageData = UIImagePNGRepresentation(avatar);
                    session.gsession.avatar = imageData;
                    FscDataManager *manager = [FscDataManager getManager];
                    NSError *error;
                    if (![manager.managedObjectContext save:&error]) {
                        NSLog(@"不能保存：%@", [error localizedDescription]);
                    }
                });
            }
            break;
        }
        case SESSION_TYPE_PUBLIC_CHAT: {
            self.sessionAvatar.image = [UIImage imageNamed:[BbiUtils getPublicIcon:session.psession.publicCode]];
            break;
        }
        case SESSION_TYPE_CLASS_CHAT: {
            [self.sessionAvatar setImage:[UIImage imageNamed:@"contact_class"]];
            break;
        }
        case SESSION_TYPE_TRG_CHAT: {
            [self.sessionAvatar setImage:[UIImage imageNamed:@"contact_trg"]];
            break;
        }
        default:
            break;
    }
    if ([session.isTop boolValue]) {
        self.backgroundColor = UIColorFromRGB(0xEEEEEE);
    }else{
        self.backgroundColor = [UIColor clearColor];
    }
}

- (NSString *)stringFromTimestamp:(SInt64)timestamp {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    NSDate *today = [NSDate date];
    NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:-86400];
    NSDate *refDate = [NSDate dateWithTimeIntervalSince1970:timestamp / 1000];

    // 10 first characters of description is the calendar date:
    NSString *todayString = [[today description] substringToIndex:10];
    NSString *yesterdayString = [[yesterday description] substringToIndex:10];
    NSString *refDateString = [[refDate description] substringToIndex:10];

    if ([refDateString isEqualToString:todayString]) {
        [formatter setDateFormat:@"HH:mm"];
        return [formatter stringFromDate:refDate];
    } else if ([refDateString isEqualToString:yesterdayString]) {
        return @"昨天";
    } else {
        [formatter setDateFormat:@"MM-dd"];
        return [formatter stringFromDate:refDate];
    }
}

@end
