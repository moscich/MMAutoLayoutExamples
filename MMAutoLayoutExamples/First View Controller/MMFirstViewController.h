//
// Created by Marek Moscichowski on 25/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MMFirstViewController : UIViewController <UITableViewDataSource>

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *constraint;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

- (IBAction)sliderChange:(UISlider *)slider;
- (IBAction)addCell;
- (IBAction)removeCell;

@end