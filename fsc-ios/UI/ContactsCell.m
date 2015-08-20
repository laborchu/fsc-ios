//
// Created by laborchu on 15/8/13.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import "ContactsCell.h"


@implementation ContactsCell {

}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(20,6,32,32);
    float imgWidth =  self.imageView.image.size.width;
    if(imgWidth > 0) {
        self.textLabel.frame = CGRectMake(60,self.textLabel.frame.origin.y,self.textLabel.frame.size.width,self.textLabel.frame.size.height);
        self.detailTextLabel.frame = CGRectMake(60,self.detailTextLabel.frame.origin.y,self.detailTextLabel.frame.size.width,self.detailTextLabel.frame.size.height);
    }
}

@end
