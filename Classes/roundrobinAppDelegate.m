//
//  roundrobinAppDelegate.m
//  roundrobin
//
//  Created by Naveen Selvadurai on 11/15/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "roundrobinAppDelegate.h"
#import "roundrobinViewController.h"

@implementation roundrobinAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
