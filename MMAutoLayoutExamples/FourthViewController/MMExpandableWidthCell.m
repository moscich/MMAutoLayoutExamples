//
//  MMExpandableWidthCell.m
//  MMAutoLayoutExamples
//
//  Created by Marek Mościchowski on 18/08/14.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMExpandableWidthCell.h"

@interface MMExpandableWidthCell ()

@end

@implementation MMExpandableWidthCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.label = [UILabel new];
        [self.label setTranslatesAutoresizingMaskIntoConstraints:NO];
        self.label.text = @"hello text 1 2 3 4 5 6 7 8 9hello text 1 2 3 4 5 6 7 8 9hello text 1 2 3 4 5 6 7 8 9hello text 1 2 3 4 5 6 7 8 9hello text 1 2 3 4 5 6 7 8 9hello text 1 2 3 4 5 6 7 8 9";
        [self addSubview:self.label];
    }

    return self;
}

- (void)updateConstraints {
    [super updateConstraints];

    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_label]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_label)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_label]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_label)]];
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0]];
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
}

@end
