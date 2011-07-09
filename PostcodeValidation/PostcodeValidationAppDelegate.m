//
//  PostcodeValidationAppDelegate.m
//  PostcodeValidation
//
//  Created by David Perry on 09/07/2011.
//  Copyright 2011 Didev Studios. All rights reserved.
//

#import "PostcodeValidationAppDelegate.h"
#import "PostcodeValidationViewController.h"

@implementation PostcodeValidationAppDelegate

@synthesize window=_window;

@synthesize viewController=_viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{     
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    
    [super dealloc];
}

@end
