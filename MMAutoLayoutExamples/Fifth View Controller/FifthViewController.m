//
//  FifthViewController.m
//  MMAutoLayoutExamples
//
//  Created by iMateusz on 05.08.2014.
//  Copyright (c) 2014 Marek Mościchowski. All rights reserved.
//

#import "FifthViewController.h"

@interface FifthViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewOKconstraint;
@property (weak, nonatomic) IBOutlet UIView *viewOK;
@property (weak, nonatomic) IBOutlet UIView *viewNO;

@end

@implementation FifthViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (IBAction)animateOK:(id)sender {
    self.viewOKconstraint.constant = self.viewOKconstraint.constant == 200 ? 500 : 200;
    [UIView animateWithDuration:0.3 animations:^{
        [self.viewOK layoutIfNeeded];
    } completion:^(BOOL finished) {
        NSLog(@"OK");
    }];
}

- (IBAction)animateNO:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        CGRect fr = self.viewNO.frame;
        self.viewNO.frame = CGRectMake(fr.origin.x, fr.origin.y, fr.size.width == 200.0f ? 500.0f : 200.0f, fr.size.height);
    } completion:^(BOOL finished) {
        NSLog(@"OK");
    }];
}

@end
