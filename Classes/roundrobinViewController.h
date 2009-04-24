//
//  roundrobinViewController.h
//  roundrobin
//
//  Created by Naveen Selvadurai on 11/15/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface roundrobinViewController : UIViewController {
	IBOutlet UIWebView *web;
	IBOutlet UIActivityIndicatorView *activity;

}

@property (nonatomic, retain) UIWebView *web;
@property (nonatomic, retain) UIActivityIndicatorView *activity;

-(IBAction)add;

@end

