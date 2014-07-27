//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMHappyViewCenterContainer.h"


@implementation MMHappyViewCenterContainer {

}

- (CGSize)intrinsicContentSize {
  CGFloat intrinsicContentWidth = self.imageView.intrinsicContentSize.width + self.label.intrinsicContentSize.width + 8;
  CGFloat intrinsicContentHeight = MAX(self.imageView.intrinsicContentSize.height, self.label.intrinsicContentSize.height);
  return CGSizeMake(intrinsicContentWidth, intrinsicContentHeight);
}

@end