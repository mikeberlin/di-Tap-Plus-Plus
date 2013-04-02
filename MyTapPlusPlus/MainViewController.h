//
//  MainViewController.h
//  MyTapPlusPlus
//
//  Created by Mike Berlin on 3/25/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblCounter;

- (IBAction)btnIncrease:(id)sender;
- (IBAction)btnDecrease:(id)sender;

@end