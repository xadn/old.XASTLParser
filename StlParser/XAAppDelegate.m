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

    NSData *data = [NSData dataWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"];
    XAStlTokenizer *tokenizer = [XAStlTokenizer alloc];
    [tokenizer tokenize:data];
    
// next up, use Lemon for parsing
}

@end