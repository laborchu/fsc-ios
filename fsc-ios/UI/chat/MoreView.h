//
// Created by laborchu on 15/10/20.
// Copyright (c) 2015 laborc. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MoreViewDelegate

@optional
-(void)sendImg:(NSData*)data;

@end

@interface MoreView : UIView


@property(nonatomic) id<MoreViewDelegate> delegate;

-(void)loadMoreView;

@end
