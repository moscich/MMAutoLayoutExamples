//
//  MMTextView.m
//  MMAutoLayoutExamples
//
//  Created by Marek Moscichowski on 29/07/14.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMTextView.h"

@implementation MMTextView

- (void)awakeFromNib {
  self.delegate = self;
}

- (void)textViewDidChange:(UITextView *)textView {
  [self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize {
  return CGSizeMake(UIViewNoIntrinsicMetric, self.contentSize.height);
}

@end
