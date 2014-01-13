//
//  XAAppDelegate.m
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//

#import "XAStlParserIncludes.h"
#import "XAStlParser.h"
#import "XAStlTokenizer.h"
#import "XAAppDelegate.h"

@implementation XAAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"hello world");
    
    void* parser = ParseAlloc(malloc);
    Parse(parser, DOUBLE, 1.2);
    Parse(parser, PLUS, 0);
    Parse(parser, DOUBLE, 1.2);
    Parse(parser, 0, 0);
    ParseFree(parser, free);

//    NSData *data = [NSData dataWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"];
//    XAStlTokenizer *tokenizer = [XAStlTokenizer alloc];
//    [tokenizer tokenize:data];
    
// next up, use Lemon for parsing
}

@end