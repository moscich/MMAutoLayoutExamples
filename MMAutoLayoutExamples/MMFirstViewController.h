//
// Created by Marek Moscichowski on 25/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MMFirstViewController : UIViewController <UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *constraint;

- (IBAction)sliderChange:(UISlider *)slider;

@end