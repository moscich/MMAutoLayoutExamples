//
// Created by Marek Mościchowski on 14/08/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMFourthViewController.h"
#import "MMExpandableWidthCell.h"

@interface MMFourthViewController ()

@property (nonatomic, strong) NSArray *model;

@end

@implementation MMFourthViewController {

}

- (void)viewDidLoad {
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.model = @[@"1 2 3 4 5 6 7 8 9 10 11 12 13 14 15",
            @"1 2 3 4 5 6 7 8 ",
            @"1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18",
            @"1 2 3 4 ",
            @"1 2 3 4 5 ",
            @"1 2 "
    ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MMExpandableWidthCell *cell = [[MMExpandableWidthCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Bazinga"];
    cell.backgroundColor = [UIColor clearColor];
    cell.label.text = self.model[(NSUInteger) indexPath.row];
    if(self.widthConstraint.constant < [cell.label intrinsicContentSize].width)
        self.widthConstraint.constant = [cell.label intrinsicContentSize].width;
//    [self.view setNeedsLayout];
    return cell;
}

@end