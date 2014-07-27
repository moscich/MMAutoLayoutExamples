//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MMSecondViewController : UIViewController

@property (nonatomic, strong) IBOutlet NSLayoutConstraint *widthConstraint;

- (IBAction)sliderChange:(UISlider *)slider;

@end