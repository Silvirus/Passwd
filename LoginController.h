//
//  LoginController.h
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class MyWindowController;

@interface LoginController : NSViewController {
	IBOutlet NSTextField *passwordField;
	IBOutlet NSTextField *errorLabel;
	
	MyWindowController *windowController;
}

- (id)initWithWindowController:(MyWindowController *)myWindowController;
- (IBAction)unlockApplication:(id)sender;

@end
