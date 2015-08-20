//
// Created by laborchu on 15/8/3.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSManagedObjectContext;


@interface FscDataManager : NSObject

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) NSString *dbName;
+ (FscDataManager *)getManager;

-(NSURL *)applicationDocumentsDirectory;

@end
