//
//  MainViewController.m
//  MyTapPlusPlus
//
//  Created by Mike Berlin on 3/25/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize lblCounter;
int counter = 0;

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

    counter = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnIncrease:(id)sender
{
    counter++;

    if (counter > 9)
    {
        [self displayError:@"Increase Error"
               withMessage:@"You clicked me waaaaaay to much son."
             andButtonText:@"My bad"];
        
        counter = 9;
    }

    [self updateCounterLabel];
}

- (IBAction)btnDecrease:(id)sender
{
    counter--;

    if (counter < 0)
    {
        [self displayError:@"Decrease error"
               withMessage:@"Come on mang, give me a chance"
             andButtonText:@"You're right"];

        counter = 0;
    }

    [self updateCounterLabel];
}

- (void)updateCounterLabel
{
        self.lblCounter.text = [NSString stringWithFormat:@"%d", counter];
}

- (void)displayError:(NSString *)title withMessage:(NSString *)message andButtonText:(NSString *)btnText
{
    UIAlertView *errorView = [[UIAlertView alloc]
                              initWithTitle:title
                              message:message
                              delegate:Nil
                              cancelButtonTitle:btnText
                              otherButtonTitles:Nil, Nil];

    [errorView show];
}

@end