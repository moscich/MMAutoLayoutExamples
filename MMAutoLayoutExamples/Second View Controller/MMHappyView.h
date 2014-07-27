//
// Created by Marek Moscichowski on 26/07/14.
// Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MMHappyViewCenterContainer;


@interface MMHappyView : UIView

@property (nonatomic, weak) IBOutlet MMHappyViewCenterContainer *centerContainer;

- (void)setTitleLabel:(NSString *)string;
- (NSString *)getTitleLabel;

@end