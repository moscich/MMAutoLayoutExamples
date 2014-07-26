//
//  MMTableView.m
//  MMAutoLayoutExamples
//
//  Created by Marek Moscichowski on 26/07/14.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMTableView.h"

@implementation MMTableView

- (CGSize)intrinsicContentSize {
  [self layoutIfNeeded];
  return CGSizeMake(UIViewNoIntrinsicMetric, self.contentSize.height);
}

@end
