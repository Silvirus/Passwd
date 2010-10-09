//
//  PasswordEntry.h
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PasswordEntry : NSObject {
	NSString *title;
	NSURL *loginUrl;
	NSString *username;
	NSString *password;
	NSString *note;
}

@property(copy) NSString *title;
@property(retain) NSURL *loginUrl;
@property(copy) NSString *username;
@property(copy) NSString *password;
@property(copy) NSString *note;

@end
