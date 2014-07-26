//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMExpandableComponent.h"


@implementation MMExpandableComponent {

}

- (id)init {
  self = [super init];
  if (self) {
    self.expandableView = [UIView new];
    [self.expandableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.expandableView.backgroundColor = [UIColor redColor];

    [self addSubview:self.expandableView];
  }

  return self;
}

- (void)updateConstraints {
  [super updateConstraints];

  NSDictionary *views = NSDictionaryOfVariableBindings(_expandableView);
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_expandableView]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_expandableView]|" options:0 metrics:nil views:views]];
}

@end