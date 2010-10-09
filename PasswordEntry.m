//
//  PasswordEntry.m
//  Passwd
//
//  Created by Sebastian Christ on 10/9/10.
//  Copyright 2010 Sebastian Christ . All rights reserved.
//

#import "PasswordEntry.h"


@implementation PasswordEntry
@synthesize title, loginUrl, username, password, note;

- (void) dealloc
{
	[title release];
	[loginUrl release];
	[username release];
	[password release];
	[note release];
	[super dealloc];
}

- (id) initWithTitle:(NSString *)aTitle loginUrl:(NSURL *)aLoginUrl username:(NSString *)aUsername password:(NSString *)aPassword
{
	self = [super init];
	if (self != nil) {
		title = [aTitle copy];
		loginUrl = [aLoginUrl retain];
		username = [aUsername copy];
		password = [aPassword copy];
	}
	return self;
}

- (id) init
{
	return [self initWithTitle:@"Untitled" loginUrl:[NSURL URLWithString:@"http://www.example.org"] username:@"JohnDoe" password:@"test12345"];
}




@end
