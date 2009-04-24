//
//  roundrobinAppDelegate.h
//  roundrobin
//
//  Created by Naveen Selvadurai on 11/15/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class roundrobinViewController;

@interface roundrobinAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    roundrobinViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet roundrobinViewController *viewController;

@end

