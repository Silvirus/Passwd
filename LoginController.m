//
//  LoginController.m
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import "LoginController.h"
#import "MyWindowController.h"
#import "PasswordController.h"


@implementation LoginController

- (id) initWithWindowController:(MyWindowController *)myWindowController
{
	self = [super initWithNibName:@"LoginView" bundle:nil];
	if (self != nil) {
		windowController = [myWindowController retain];
	}
	return self;
}

- (void) dealloc
{
	[windowController release];
	[super dealloc];
}


- (IBAction)unlockApplication:(id)sender
{
	NSString *password = [passwordField stringValue];
	// TODO: password hash from userdefaults
	if ([password isEqualToString:@"foo"]) {
		PasswordController *passwordController = [[PasswordController alloc] initWithWindowController:windowController];
		[windowController replaceContentView:passwordController];
		[passwordController release];
	}
	else {
		[errorLabel setStringValue:@"Invalid Password"];
		[passwordField selectText:self];
	}
}

@end
