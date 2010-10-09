//
//  MyWindowController.m
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import "MyWindowController.h"
#import "LoginController.h"


@implementation MyWindowController

enum ViewTags {
	pLoginView = 0,
	pMainView
};

- (id) init
{
	return [super initWithWindowNibName:@"PasswdWindow"];
}

- (void)awakeFromNib
{
	currentViewContoller = [[LoginController alloc] initWithWindowController:self];
	[targetView addSubview:[currentViewContoller view]];
	[[currentViewContoller view] setFrame:[targetView bounds]];
}

- (void)replaceContentView:(NSViewController *)aViewController
{
	[[currentViewContoller view] removeFromSuperview];
	[currentViewContoller release];
	currentViewContoller = nil;
	
	currentViewContoller = [aViewController retain];
	[targetView addSubview:[currentViewContoller view]];
	[[currentViewContoller view] setFrame:[targetView bounds]];
}

@end
