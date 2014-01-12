//
//  XAAppDelegate.m
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//


#import "XAStlTokenizer.h"
#import "XAAppDelegate.h"


@implementation XAAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"hello world");

    XAStlTokenizer *tokenizer = [XAStlTokenizer alloc];
    [tokenizer tokenize];
    
//    NSString *stl = [NSString
//                     stringWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"
//                     encoding:NSASCIIStringEncoding
//                     error:NULL];
}

@end