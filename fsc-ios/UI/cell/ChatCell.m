//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "ChatCell.h"
#import "FscChatRecorder.h"


@implementation ChatCell {

}

- (void)setFrame:(CGRect)frame
{
    frame.size.width = [UIScreen mainScreen].bounds.size.width;
    [super setFrame:frame];
}

-(void)setRecorder:(FscChatRecorder *)recorder{
}

-(UIView *)getView{
    return nil;
}

@end
