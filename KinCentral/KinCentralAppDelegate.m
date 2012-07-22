//
//  KinCantralAppDelegate.m
//  KinCentral
//
//  Created by student on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KinCentralAppDelegate.h"

#import "KinCentralViewController.h"

@implementation KinCentralAppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    KinCentralViewController *root = [KinCentralViewController new];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:root];
    
    [root release];
    
    self.window.rootViewController = navController;
    
    [navController release];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
