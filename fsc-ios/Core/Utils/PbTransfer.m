//
// Created by laborchu on 15/7/30.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <ProtocolBuffers/ProtocolBuffers/GeneratedMessage.h>
#import "PbTransfer.h"
#import "FscDataManager.h"

@implementation PbTransfer {

}


+(id)pb:(id)pb entityName:(NSString *)entityName fields:(NSArray *)fields{
    FscDataManager *manager = [FscDataManager getManager];
    id vo=  [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:manager.managedObjectContext];
    for (NSString * field in fields) {
        NSRange range = [field rangeOfString:@":"];
        NSString *pbField = field;
        NSString *voField = field;
        if(range.location!=NSNotFound){
            NSArray* fieldArray = [field componentsSeparatedByString:@":"];
            pbField = fieldArray.firstObject;
            voField = fieldArray.lastObject;
        }
        id value = [pb valueForKey:pbField];
        [vo setValue:value forKey:voField];
    }
    return vo;
}

+ (id)pb:(PBGeneratedMessage *)pb vo:(id)vo fields:(NSArray *)fields {
    for (NSString * field in fields) {
        NSRange range = [field rangeOfString:@":"];
        NSString *pbField = field;
        NSString *voField = field;
        if(range.location!=NSNotFound){
            NSArray* fieldArray = [field componentsSeparatedByString:@":"];
            pbField = fieldArray.firstObject;
            voField = fieldArray.lastObject;
        }
        id value = [pb valueForKey:pbField];
        [vo setValue:value forKey:voField];
    }
    return vo;
}


@end
