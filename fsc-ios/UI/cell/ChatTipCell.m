//
// Created by laborchu on 15/9/10.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "ChatTipCell.h"
#import "FscChatRecorder.h"

@interface ChatTipCell ()
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;

@end

@implementation ChatTipCell {

}

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if (self) {
    }
    return self;
}

-(void)setRecorder:(FscChatRecorder *)recorder{
    _tipLabel.text = recorder.message;
}

@end
