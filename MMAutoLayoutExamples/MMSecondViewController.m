//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMSecondViewController.h"


@implementation MMSecondViewController {

}
- (IBAction)sliderChange:(UISlider *)slider {
  self.widthConstraint.constant = slider.value;
}


@end