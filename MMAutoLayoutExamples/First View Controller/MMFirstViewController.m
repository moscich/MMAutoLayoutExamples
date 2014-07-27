//
// Created by Marek Moscichowski on 25/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMFirstViewController.h"

@interface MMFirstViewController ()
@property int model;
@end

@implementation MMFirstViewController {

}

- (id)init {
  self = [super init];
  if (self) {
    self.automaticallyAdjustsScrollViewInsets = NO;
  }

  return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.model;
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

- (IBAction)addCell {
  self.model ++;
  [self.tableView invalidateIntrinsicContentSize];
  [self.tableView reloadData];
}

- (IBAction)removeCell {
  self.model --;
  [self.tableView invalidateIntrinsicContentSize];
  [self.tableView reloadData];
}

@end