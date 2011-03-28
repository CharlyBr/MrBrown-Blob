//
//  TintedUIBarButtonItemViewController.m
//  TintedUIBarButtonItem
//
//  Created by CharlyBr on 2/10/11.
//  Copyright 2011 Charles Viard. All rights reserved.
//

#define UIColorFromRGB(rgbValue) [UIColor \
	colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
	green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
	blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import "TintedUIBarButtonItemViewController.h"

@implementation TintedUIBarButtonItemViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	UIToolbar *toolbar = [[[UIToolbar alloc] init] autorelease];
	toolbar.barStyle = UIBarStyleDefault;
	[toolbar sizeToFit];
	//The line below is optional, and is used to change the toolbar position. You have to calculate the navigationbar's height also, if exists
    toolbar.frame = CGRectMake(0, self.view.frame.size.height-44, self.view.frame.size.width, 44);
	[self.view addSubview:toolbar];
	
	/* Create our tinted button */
	UISegmentedControl *button = [[[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Add", nil]] autorelease];
	button.momentary = YES;
	button.segmentedControlStyle = UISegmentedControlStyleBar;
	button.tintColor = UIColorFromRGB(0x0d9c23);
	UIBarButtonItem *barButton = [[[UIBarButtonItem alloc] initWithCustomView:button] autorelease];

	UISegmentedControl *button2 = [[[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Delete", nil]] autorelease];
	button2.momentary = YES;
	button2.segmentedControlStyle = UISegmentedControlStyleBar;
	button2.tintColor = UIColorFromRGB(0xC84131);
	UIBarButtonItem *barButton2 = [[[UIBarButtonItem alloc] initWithCustomView:button2] autorelease];

	[toolbar setItems:[NSArray arrayWithObjects: barButton, barButton2, nil]];

	
	/* Create a tinted "UIButton" */
	UISegmentedControl *button3 = [[[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Add", nil]] autorelease];
	button3.frame = CGRectMake(0, 0, 160, 33);
	button3.center = self.view.center;
	button3.momentary = YES;
	button3.segmentedControlStyle = UISegmentedControlStyleBar;
	button3.tintColor = UIColorFromRGB(0x0000DD);
	[self.view addSubview:button3];
	
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
