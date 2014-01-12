//
//  XAAppDelegate.m
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//


#import "XAAppDelegate.h"
#import "tokenizer.h"


@implementation XAAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"hello world");
    tokenize();

    
//    NSString *stl = [NSString
//                     stringWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"
//                     encoding:NSASCIIStringEncoding
//                     error:NULL];
}

@end
