//
//  MMAppDelegate.m
//  MMAutoLayoutExamples
//
//  Created by Marek Moscichowski on 25/07/14.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "MMAppDelegate.h"
#import "MMFirstViewController.h"
#import "MMSecondViewController.h"

@implementation MMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];

  MMFirstViewController *firstViewController = [MMFirstViewController new];
  MMSecondViewController *secondViewController = [MMSecondViewController new];
  self.window.rootViewController = secondViewController;

  return YES;
}

@end