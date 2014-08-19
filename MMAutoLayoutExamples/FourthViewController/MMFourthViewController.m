//
// Created by Marek Mościchowski on 14/08/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMFourthViewController.h"
#import "MMExpandableWidthCell.h"


@implementation MMFourthViewController {

}

- (void)viewDidLoad {

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MMExpandableWidthCell *cell = [[MMExpandableWidthCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Bazinga"];
    self.widthConstraint.constant = [cell.label intrinsicContentSize].width;
//    [self.view setNeedsLayout];
    return cell;
}

@end