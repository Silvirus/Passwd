//
//  MyWindowController.h
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyWindowController : NSWindowController {
	IBOutlet NSView *targetView;
	NSViewController *currentViewContoller;
}

- (void)replaceContentView:(NSViewController *)aViewController;

@end
