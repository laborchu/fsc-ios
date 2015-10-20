//
// Created by laborchu on 15/7/27.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "Scheduler.h"
#import "ARsCmd.h"
#import "ALcCmd.h"

static NSMutableArray *cmdStack = nil;
static bool exeLock = NO;
static NSOperationQueue *queue = nil;
@implementation Scheduler {
}

+ (void) initialize {
    cmdStack = [NSMutableArray arrayWithCapacity:10];
    queue = [[NSOperationQueue alloc] init];
}

+ (void)exeRs:(ARsCmd *)cmd {
    if ([cmd isSingleReq]){
        for (ARsCmd *rsCmd in cmdStack) {
            if([[rsCmd getCmdCode] isEqualToString:[cmd getCmdCode]]){
                return;
            }
        }
    }
    [cmdStack insertObject:cmd atIndex:0];
    [Scheduler doCmd];
}

+ (id)exeLc:(ALcCmd *)cmd {
    return [cmd execute];
}

+(void)doCmd{
    if(cmdStack.count>0&&!exeLock){
        exeLock = YES;
        ARsCmd *cmd = cmdStack.lastObject;
        [cmdStack removeLastObject];
        [queue addOperation:[NSBlockOperation blockOperationWithBlock:^{
            [cmd req];
            NSLog(@"cmd %@ req", [cmd getCmdCode]);
            if(!cmd.doSend){
                [Scheduler unLockExe];
                [Scheduler doCmd];
            }
        }]];
    }
}

+(void)unLockExe{
    exeLock = NO;
}

@end
