//
//  SixthViewController.m
//  MMAutoLayoutExamples
//
//  Created by iMateusz on 05.08.2014.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "SixthViewController.h"

@interface SixthViewController ()
@property (weak, nonatomic) IBOutlet UIView *redMiddle;
@property (weak, nonatomic) IBOutlet UIView *blueMiddle;

@end

@implementation SixthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)kill:(id)sender {
    [self.redMiddle removeFromSuperview];
    [self.view layoutIfNeeded];
}

- (IBAction)killKill:(id)sender {
    [self.blueMiddle removeFromSuperview];
    [self.view layoutIfNeeded];
}

@end
