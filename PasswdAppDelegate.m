//
//  PasswdAppDelegate.m
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import "PasswdAppDelegate.h"
#import "MyWindowController.h"

@implementation PasswdAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	windowController = [[MyWindowController alloc] init];
	[windowController showWindow:self];
}

@end
