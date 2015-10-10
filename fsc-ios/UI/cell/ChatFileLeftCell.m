//
//  ChatFileLeftCell.m
//  fsc-ios
//
//  Created by laborchu on 15/9/24.
//  Copyright (c) 2015年 laborc. All rights reserved.
//

#import "ChatFileLeftCell.h"
#import "AChatHandler.h"
#import "ChatFileModel.h"
#import "FscChatRecorder.h"
#import "BbiUtils.h"

@interface ChatFileLeftCell ()
@property(weak, nonatomic) IBOutlet UIImageView *avatarImg;
@property(weak, nonatomic) IBOutlet UILabel *nameLabel;
@property(weak, nonatomic) IBOutlet UILabel *fileNameLabel;
@property(weak, nonatomic) IBOutlet UILabel *fileSizeLabel;
@property(weak, nonatomic) IBOutlet UIImageView *fileIcon;
@end


@implementation ChatFileLeftCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setRecorder:(FscChatRecorder *)recorder {
    [self.chatHandler setRecorder:recorder avatarImg:_avatarImg nameLabel:_nameLabel];
    
    NSError* err = nil;
    ChatFileModel *fileModel = [[ChatFileModel alloc] initWithString:recorder.message error:&err];
    if(!err){
        _fileNameLabel.text = fileModel.fileName;
        _fileSizeLabel.text =  [@(fileModel.fileSize) stringValue];
        _fileIcon.image = [UIImage imageNamed:[BbiUtils getFileIcon:fileModel.fileType]];
    }
}


@end
