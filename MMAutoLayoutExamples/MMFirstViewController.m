//
// Created by Marek Moscichowski on 25/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMFirstViewController.h"


@implementation MMFirstViewController {

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [UITableViewCell new];
  cell.textLabel.text = @"test";
  cell.backgroundColor = [UIColor clearColor];
  return cell;
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}

- (IBAction)sliderChange:(UISlider *)slider {
  self.constraint.constant = slider.value;
}


@end