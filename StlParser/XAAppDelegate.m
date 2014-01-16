//
//  XAAppDelegate.m
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//

#import <SceneKit/SceneKit.h>
#import "XAStlTokenizer.h"
#import "XAAppDelegate.h"

NSMutableArray *triangles = [[NSMutableArray alloc] init];

@implementation XAAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"hello world");
    

    
    [triangles addObject:@"hello"];

//    NSData *data = [NSData dataWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"];
//    XAStlTokenizer *tokenizer = [XAStlTokenizer alloc];
//    [tokenizer tokenize:data];
}

@end