//
// Created by laborchu on 15/7/27.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "ARsCmd.h"
#import "CmdSign.pb.h"
#import "FscSocketClient.h"
#import "FscDataManager.h"
#import "FSCUser.h"
#import "IosUtils.h"
#import "FscAppDelegate.h"

@implementation ARsCmd {

}


-(void) req{
    NSLog(@"req");
}

- (void)resp:(CmdSignPb *)sign {
    NSLog(@"resp");
}


//build cmd sign
- (CmdSignPb *)buildCmdSignPb:(NSString *)cmdCode data:(id)data {
    return [[[[[CmdSignPb builder] setCmdCode:cmdCode]
            setSource:[self pbToData:data]]
            setToken:[self createUUID]]
            build];
}

//发送数据
-(bool) send:(NSString *)cmdCode data:(id)data{
    self.doSend = (BOOL *) YES;
    CmdSignPb *signPb = [self buildCmdSignPb:cmdCode data:data];
    NSData *cmdSignData = [self pbToData:signPb];
    FscSocketClient *client = [FscSocketClient getClient];
    [client writeData:cmdSignData];
    [client addCommand:signPb.token cmd:self];
    return YES;
}

//将pb转换成Data类型
- (NSData *)pbToData:(id)pb
{
    NSOutputStream *outputStream = [NSOutputStream outputStreamToMemory];
    [outputStream open];
    [pb writeToOutputStream:outputStream];
    return [outputStream propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
}


- (NSString *)createUUID
{
    CFUUIDRef udid = CFUUIDCreate(NULL);
    NSString *udidString = (NSString *) CFBridgingRelease(CFUUIDCreateString(NULL, udid));
    return udidString;
}

- (FSCUser *)getFscUser{
    FscAppDelegate *fscAppDelegate = [IosUtils getApp];
    return fscAppDelegate.fscUser;
}

-(void) savaData{
    FscDataManager *manager = [FscDataManager getManager];
    NSError *error;
    if(![manager.managedObjectContext save:&error])
    {
        NSLog(@"不能保存：%@",[error localizedDescription]);
    }
}

/**
* 等待执行列表中只允许存在一个实例
*/
- (BOOL)isSingleReq {
    return NO;
}


@end
