//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMHappyView.h"
#import "MMHappyViewCenterContainer.h"


@implementation MMHappyView {

}

- (CGSize)intrinsicContentSize {
  return [self.centerContainer intrinsicContentSize];
}

@end