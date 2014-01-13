%%{
  machine stl_lexer;

  vertex      = 'vertex';
  endsolid    = 'endsolid';
  endfacet    = 'endfacet';
  endloop     = 'endloop';
  facet       = 'facet normal';
  outerloop   = 'outer loop';
  solid       = 'solid' ?alnum*;
  float       = ('+'|'-')?digit+'.'digit+('e'('+'|'-')digit+)?;
  
  main := |*
  
    vertex => {
        NSLog(@"vertex");
    };
    
    endsolid => {
        NSLog(@"endsolid");
    };

    endfacet => {
        NSLog(@"endfacet");
    };
    
    endloop => {
        NSLog(@"endloop");
    };
    
    facet => {
        NSLog(@"facet");
    };

    outerloop => { 
        NSLog(@"outerloop");
    };

    solid => {
        NSLog(@"solid");
    };
    
    float => {
        long length = te - ts;

        NSString *str = [[NSString alloc] initWithBytesNoCopy:(void *)ts 
                                            length:length 
                                            encoding:NSASCIIStringEncoding 
                                            freeWhenDone:false];
        NSLog(@"float: %f", [str floatValue]);
    };

    space;
    
  *|;
 
}%%
 
%% write data;

// %% Objective-C goes here
// This file is used to generate XAStlTokenizer.m
//
//  XAStlTokenizer.m.rl
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//

#import "XAStlTokenizer.h"

@implementation XAStlTokenizer

- (void) tokenize:(NSData *)inData
{
    NSLog(@"STARTING TOKENIZATION!");

    int   cs    = 0;                        // current state
    char *p     = (char *)[inData bytes];   // data pointer
    char *pe    = p + [inData length];      // data end pointer
    char *eof   = pe;
    char *ts    = 0;
	char *te    = 0;
    int   act   = 0;

    %% write init;
    %% write exec;
    
    NSLog(@"TOKENIZATION COMPLETE!");
}

@end
