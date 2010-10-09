//
//  PasswdAppDelegate.h
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class MyWindowController;

@interface PasswdAppDelegate : NSObject <NSApplicationDelegate> {
	MyWindowController *windowController;
}

@end
