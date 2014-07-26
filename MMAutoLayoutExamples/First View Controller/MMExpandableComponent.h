//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MMExpandableComponent : UIView

@property (nonatomic, strong) UIScrollView *containingScrollView;
@property (nonatomic, strong) UIView *expandableView;

@property(nonatomic, strong) NSLayoutConstraint *heightConstraint;
@end