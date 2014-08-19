//
// Created by Marek Mościchowski on 14/08/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MMFourthViewController : UIViewController <UITableViewDataSource>

@property (nonatomic, strong) IBOutlet NSLayoutConstraint *widthConstraint;
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end