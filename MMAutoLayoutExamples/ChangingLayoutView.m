#import <UIKit/UIKit.h>
#import "ChangingLayoutView.h"

@interface ChangingLayoutView ()

@property(nonatomic, assign) BOOL isConfirmationVisible;

@end

@implementation ChangingLayoutView {

}

- (void)awakeFromNib {
  [self setTranslatesAutoresizingMaskIntoConstraints:NO];
  _disconnectButton = [UIButton new];
  [_disconnectButton setTranslatesAutoresizingMaskIntoConstraints:NO];
  [_disconnectButton addTarget:self action:@selector(endButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
  _disconnectButton.backgroundColor = [UIColor redColor];
  [_disconnectButton setTitle:@"End" forState:UIControlStateNormal];

  _cancelButton = [UIButton new];
  [_cancelButton setTranslatesAutoresizingMaskIntoConstraints:NO];
  [_cancelButton addTarget:self action:@selector(cancelButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
  _cancelButton.backgroundColor = [UIColor blueColor];
  _cancelButton.alpha = 0;
  [_cancelButton setTitle:@"Cancel" forState:UIControlStateNormal];

  self.disconnectConfirmationLabel = [UILabel new];
  [self.disconnectConfirmationLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
  self.disconnectConfirmationLabel.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pellentesque ultrices eleifend. Pellentesque pellentesque ultrices eleifend.";
  self.disconnectConfirmationLabel.alpha = 0;
  self.disconnectConfirmationLabel.numberOfLines = 0;
  [self addSubview:self.disconnectConfirmationLabel];
  [self addSubview:self.cancelButton];
  [self addSubview:self.disconnectButton];

}

- (void)cancelButtonTapped:(id)cancelButtonTapped {
  [UIView animateWithDuration:0.5 animations:^
          {
            [self.disconnectButton setTitle:@"End" forState:UIControlStateNormal];
            self.disconnectConfirmationLabel.alpha = 0;
            self.cancelButton.alpha = 0;
            self.isConfirmationVisible = NO;
            [self setNeedsUpdateConstraints];
            [self updateConstraintsIfNeeded];
            [self layoutIfNeeded];
          }];
}

- (void)endButtonTapped:(id)disconnectButtonTapped {
  if (!self.isConfirmationVisible)
    [UIView animateWithDuration:0.5 animations:^
            {
              [self.disconnectButton setTitle:@"Confirm" forState:UIControlStateNormal];
              self.disconnectConfirmationLabel.alpha = 1;
              self.cancelButton.alpha = 1;
              self.isConfirmationVisible = YES;
              [self setNeedsUpdateConstraints];
              [self updateConstraintsIfNeeded];
              [self layoutIfNeeded];
            }];
}

- (void)updateConstraints {
  [self removeConstraints:self.constraints];
  [super updateConstraints];

  if (_isConfirmationVisible)
    [self updateConstraintsForConfirmationView];
  else
    [self updateConstraintsForNormalView];
}

- (void)updateConstraintsForConfirmationView {
  NSDictionary *views = NSDictionaryOfVariableBindings(_disconnectConfirmationLabel, _disconnectButton, _cancelButton);
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_disconnectButton(30)]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_disconnectConfirmationLabel]-[_disconnectButton(100)]-[_cancelButton(100)]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_cancelButton(30)]|" options:0 metrics:nil views:views]];

  [self addConstraint:[NSLayoutConstraint constraintWithItem:self.disconnectConfirmationLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}

- (void)updateConstraintsForNormalView {
  NSDictionary *views = NSDictionaryOfVariableBindings(_disconnectButton, _cancelButton, _disconnectConfirmationLabel);
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_disconnectButton(30)]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_disconnectButton(100)]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[_disconnectConfirmationLabel]-[_disconnectButton]" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_cancelButton(30)]|" options:0 metrics:nil views:views]];
  [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_cancelButton(100)]|" options:0 metrics:nil views:views]];

  [self addConstraint:[NSLayoutConstraint constraintWithItem:self.disconnectConfirmationLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}

@end