//
//  PasswordController.m
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import "PasswordController.h"
#import "MyWindowController.h"
#import "PasswordEntry.h"

@implementation PasswordController

- (id)initWithWindowController:(MyWindowController *)aWindowController
{
	self = [super initWithNibName:@"PasswordView" bundle:nil];
	if (self != nil) {
		windowController = [aWindowController retain];
	}
	
	return self;
}

- (void) dealloc
{
	[windowController release];
	[super dealloc];
}

- (IBAction)createPasswordEntry:(id)sender
{
	newEntry = [passwords newObject];
	[passwords addObject:newEntry];
	
	// enabling the text fields for editing
	[titleField setEditable:true];
	[urlField setEditable:true];
	[usernameField setEditable:true];
	[passwordField setEditable:true];

	[editButton setState:NSOnState];
	[[titleField window] makeFirstResponder:titleField];
}

- (IBAction)finishedEditingPasswordEntry:(id)sender
{
	if ([editButton state] == NSOffState) {
		[newEntry setTitle:[titleField stringValue]];
		[newEntry setLoginUrl:[NSURL URLWithString:[urlField stringValue]]];
		[newEntry setUsername:[usernameField stringValue]];
		[newEntry setPassword:[passwordField stringValue]];
		
		// disable views to prevent editing accidentally
		[titleField setEditable:false];
		[urlField setEditable:false];
		[usernameField setEditable:false];
		[passwordField setEditable:false];
		
		[newEntry release];
	}
	else if ([editButton state] == NSOnState) {
		<#statements#>
	}
}

@end
