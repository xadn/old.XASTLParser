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

    NSData *data = [NSData dataWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"];
//    NSData *data = [NSData dataWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/flatirons.stl"];
    
    char *buff = "this is a test string";
    char subbuff[5];
    memcpy( subbuff, &buff[10], 4 );
    subbuff[4] = '\0';
    
    [tokenizer tokenize:data];
    
// next up, use Lemon for parsing
}

@end