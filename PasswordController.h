//
//  PasswordController.h
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class MyWindowController, PasswordEntry;

@interface PasswordController : NSViewController {
	MyWindowController *windowController;
	IBOutlet NSArrayController *passwords;
	IBOutlet NSButton *editButton;
	PasswordEntry *newEntry;
	
	// Textfields
	IBOutlet NSTextField *titleField;
	IBOutlet NSTextField *urlField;
	IBOutlet NSTextField *usernameField;
	IBOutlet NSTextField *passwordField;
}

- (id)initWithWindowController:(MyWindowController *)aWindowController;
- (IBAction)createPasswordEntry:(id)sender;
- (IBAction)finishedEditingPasswordEntry:(id)sender;

@end
