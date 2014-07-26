//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMFirstView.h"
#import "MMExpandableComponent.h"


@implementation MMFirstView {

}

- (void)updateConstraints {
  [super updateConstraints];

  NSDictionary *views = NSDictionaryOfVariableBindings(_expandableComponent);
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_expandableComponent]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_expandableComponent]|" options:0 metrics:nil views:views]];

  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.expandableComponent.expandableView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
  constraint.priority = 500;
  [self addConstraint:constraint];
}

@end