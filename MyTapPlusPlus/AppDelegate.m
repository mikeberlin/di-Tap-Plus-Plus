//
//  AppDelegate.m
//  MyTapPlusPlus
//
//  Created by Mike Berlin on 3/25/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.mainView = [[MainViewController alloc] init];
    self.window.rootViewController = self.mainView;

    [self.window makeKeyAndVisible];
    return YES;
}

@end