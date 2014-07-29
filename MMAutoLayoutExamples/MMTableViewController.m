//
// Created by Marek Moscichowski on 27/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMTableViewController.h"
#import "MMFirstViewController.h"
#import "MMSecondViewController.h"
#import "MMThirdViewController.h"


@implementation MMTableViewController {

}

- (id)init {
  self = [super init];
  if (self) {
    self.controllers = @[[MMFirstViewController new], [MMSecondViewController new], [MMThirdViewController new]];
  }

  return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Identifier"];
  if(!cell){
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Identifier"];
  }

  cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.controllers[(NSUInteger) indexPath.row] class]];
  return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.controllers.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [self.navigationController pushViewController:self.controllers[(NSUInteger) indexPath.row] animated:YES];
}

@end