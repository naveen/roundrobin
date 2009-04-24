//
//  roundrobinViewController.m
//  roundrobin
//
//  Created by Naveen Selvadurai on 11/15/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "roundrobinViewController.h"

@implementation roundrobinViewController

@synthesize web, activity;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    }
    return self;
}

/*
// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
}
*/

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://twitfind.com/roundrobin/stories"]]];
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
	[activity startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
	[activity stopAnimating];
}

- (IBAction)add {
	[web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://twitfind.com/roundrobin/add-to-story"]]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[web release];
	[activity release];
    [super dealloc];
}

@end
