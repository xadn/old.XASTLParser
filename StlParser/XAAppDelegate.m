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
    
    float *A;
    float a[3] = { 1, 2, 3 };
    A = a;
    
    float *B;
    float b[3] = { 1, 2, 3 };
    B = b;
    
    float *C;
    float c[3] = { 1, 2, 3 };
    C = c;
    
    float **D;
    float* d[3] = { A, B, C };
    D = d;
    

    NSData *data = [NSData dataWithContentsOfFile:@"/Users/andy/code/StlParser/StlParser/slotted_disk.stl"];
    XAStlTokenizer *tokenizer = [XAStlTokenizer alloc];
    [tokenizer tokenize:data];
}

@end