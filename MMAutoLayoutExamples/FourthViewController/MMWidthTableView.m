//
// Created by Marek Mościchowski on 18/08/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMWidthTableView.h"


@implementation MMWidthTableView {

}

- (CGSize)intrinsicContentSize {
    [self layoutIfNeeded];
    return CGSizeMake(UIViewNoIntrinsicMetric, self.contentSize.height);
}

@end