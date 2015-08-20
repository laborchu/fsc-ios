//
// Created by laborchu on 15/8/3.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "FscDataManager.h"

static FscDataManager *fscDataManager;

@implementation FscDataManager

+ (FscDataManager *)getManager {
    if(!fscDataManager){
        fscDataManager = [[FscDataManager alloc] init];
    }
    return fscDataManager;
}

- (NSURL *)applicationDocumentsDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


-(NSManagedObjectContext *)managedObjectContext {
    if(_managedObjectContext != nil){
        return _managedObjectContext;
    }

    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if(!coordinator){
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

-(NSManagedObjectModel *)managedObjectModel {
    if(_managedObjectModel!= nil){
        return _managedObjectModel;
    }
    NSURL *modelUrl = [[NSBundle mainBundle] URLForResource:@"FSCData" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelUrl];
    return _managedObjectModel;
}

-(NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    if(_persistentStoreCoordinator!= nil){
        return _persistentStoreCoordinator;
    }
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeUrl = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:[_dbName stringByAppendingString:@".sqlite"]];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";

    NSDictionary *options = @{NSMigratePersistentStoresAutomaticallyOption : @YES,
            NSInferMappingModelAutomaticallyOption : @YES};
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeUrl options:options error:&error]){
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        //        abort();
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        NSFileManager *fm = [NSFileManager defaultManager];
        if ([fm fileExistsAtPath:[storeUrl path]]){
            NSURL *corruptUrl = [[self applicationIncompatibleStoresDirectory] URLByAppendingPathComponent:[self nameForIncompatibleStore]];
            NSError *errorMoveStore = nil;
            [fm moveItemAtURL:storeUrl toURL:corruptUrl error:&errorMoveStore];
            if (errorMoveStore) {
                NSLog(@"Unable to move corrupt store.");
            }
            NSError *errorAddingStore = nil;
            if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeUrl options:options error:&errorAddingStore]) {
                NSLog(@"Unable to create persistent store after recovery. %@, %@", errorAddingStore, errorAddingStore.localizedDescription);
            }
        }
    }
    return _persistentStoreCoordinator;
}

-(NSURL *)applicationIncompatibleStoresDirectory{
    NSFileManager *fm = [NSFileManager defaultManager];
    NSURL *URL = [[self applicationStoresDirectory] URLByAppendingPathComponent:@"Incompatible"];

    if (![fm fileExistsAtPath:[URL path]]) {
        NSError *error = nil;
        [fm createDirectoryAtURL:URL withIntermediateDirectories:YES attributes:nil error:&error];

        if (error) {
            NSLog(@"Unable to create directory for corrupt data stores.");

            return nil;
        }
    }
    return URL;
}

- (NSURL *)applicationStoresDirectory {
    NSFileManager *fm = [NSFileManager defaultManager];
    NSURL *applicationApplicationSupportDirectory = [[fm URLsForDirectory:NSApplicationSupportDirectory inDomains:NSUserDomainMask] lastObject];
    NSURL *URL = [applicationApplicationSupportDirectory URLByAppendingPathComponent:@"Stores"];

    if (![fm fileExistsAtPath:[URL path]]) {
        NSError *error = nil;
        [fm createDirectoryAtURL:URL withIntermediateDirectories:YES attributes:nil error:&error];

        if (error) {
            NSLog(@"Unable to create directory for data stores.");
            return nil;
        }
    }

    return URL;
}

- (NSString *)nameForIncompatibleStore {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [dateFormatter setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
    return [NSString stringWithFormat:@"%@.sqlite", [dateFormatter stringFromDate:[NSDate date]]];
}

@end
