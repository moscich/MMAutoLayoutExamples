//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMSecondView.h"
#import "MMHappyView.h"

@interface MMSecondView ()

@property (nonatomic, strong) UIView *leftSpacer;
@property (nonatomic, strong) UIView *rightSpacer;

@end

@implementation MMSecondView {

}

- (void)awakeFromNib {
  [super awakeFromNib];
  self.happyView = [[[NSBundle mainBundle] loadNibNamed:@"MMHappyView" owner:self options:nil] lastObject];
  [self.happyView setTranslatesAutoresizingMaskIntoConstraints:NO];
//
//  [self.happyView setContentCompressionResistancePriority:1000 forAxis:UILayoutConstraintAxisVertical];

  self.secondHappyView = [[[NSBundle mainBundle] loadNibNamed:@"MMHappyView" owner:self options:nil] lastObject];
  [self.secondHappyView setTranslatesAutoresizingMaskIntoConstraints:NO];
  [self.secondHappyView setTitleLabel:@"Hopsa"];

  [self.containerView addSubview:self.happyView];
  [self.containerView addSubview:self.secondHappyView];
  self.containerViewWidthConstraint = [NSLayoutConstraint constraintWithItem:self.containerView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1.0 constant:512];

  self.equalViewsConstraints = [NSLayoutConstraint constraintWithItem:self.happyView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.secondHappyView attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];

  self.leftSpacer = [UIView new];
  [self.leftSpacer setTranslatesAutoresizingMaskIntoConstraints:NO];
  [self.containerView addSubview:self.leftSpacer];
  self.rightSpacer = [UIView new];
  [self.rightSpacer setTranslatesAutoresizingMaskIntoConstraints:NO];
  [self.containerView addSubview:self.rightSpacer];

  [self addConstraint:[NSLayoutConstraint constraintWithItem:self.leftSpacer attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.rightSpacer attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
}

- (void)updateConstraints {
  [super updateConstraints];

  NSDictionary *views = NSDictionaryOfVariableBindings(_happyView, _secondHappyView, _rightSpacer, _leftSpacer);

  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(20@900)-[_leftSpacer][_happyView(180@500)]-[_secondHappyView(180@500)][_rightSpacer]-(20@900)-|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(>=20@750)-[_happyView(100@500)]-(>=20@750)-|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(>=20@750)-[_secondHappyView(100@500)]-(>=20@750)-|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_leftSpacer]-|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_rightSpacer]-|" options:0 metrics:nil views:views]];

  [self addConstraint:[NSLayoutConstraint constraintWithItem:self.happyView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.containerView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
  [self addConstraint:[NSLayoutConstraint constraintWithItem:self.secondHappyView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.containerView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}

- (void)setCompressionAndHugging:(UISegmentedControl *)control
{
  switch (control.selectedSegmentIndex)
  {
    case 0:
      [self.happyView setContentCompressionResistancePriority:750 forAxis:UILayoutConstraintAxisHorizontal];
      [self.happyView setContentHuggingPriority:250 forAxis:UILayoutConstraintAxisHorizontal];
      [self.secondHappyView setContentCompressionResistancePriority:750 forAxis:UILayoutConstraintAxisHorizontal];
      [self.secondHappyView setContentHuggingPriority:250 forAxis:UILayoutConstraintAxisHorizontal];
      break;
    case 1:
      [self.happyView setContentCompressionResistancePriority:1000 forAxis:UILayoutConstraintAxisHorizontal];
      [self.secondHappyView setContentHuggingPriority:750 forAxis:UILayoutConstraintAxisHorizontal];
      [self.secondHappyView setContentCompressionResistancePriority:0 forAxis:UILayoutConstraintAxisHorizontal];
      break;
    default:break;
  }
}

- (IBAction)equalitySwitchTapped:(UISwitch *)equalitySwitch {
  if(equalitySwitch.on){
    [self addConstraint:self.equalViewsConstraints];
  }
  else{
    [self removeConstraint:self.equalViewsConstraints];
  }
//  [self setNeedsUpdateConstraints];
}

- (IBAction)swapLabels {
  NSString *temp = [self.secondHappyView getTitleLabel];
  [self.secondHappyView setTitleLabel:[self.happyView getTitleLabel]];
  [self.happyView setTitleLabel:temp];
  [self.happyView invalidateIntrinsicContentSize];
  [self.secondHappyView invalidateIntrinsicContentSize];
  [self setNeedsLayout];

}

@end