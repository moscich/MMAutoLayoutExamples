//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MMHappyView;


@interface MMSecondView : UIView

@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, strong) MMHappyView *happyView;
@property (nonatomic, strong) MMHappyView *secondHappyView;

@property(nonatomic, strong) NSLayoutConstraint *containerViewWidthConstraint;
@end