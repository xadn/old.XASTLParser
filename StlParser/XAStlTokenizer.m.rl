%%{
  machine stl_lexer;

  vertex      = 'vertex';
  endsolid    = 'endsolid';
  endfacet    = 'endfacet';
  endloop     = 'endloop';
  facet       = 'facet normal';
  outerloop   = 'outer loop';
  solid       = 'solid DiskBase';
  float       = ('+'|'-')?digit+'.'digit+('e'('+'|'-')digit+)?;
  
  main := |*
  
    vertex => {
            NSLog(@"t_v");
        Parse(parser, VERTEX, 0);
    };
    
    endsolid => {
            NSLog(@"t_es");
        Parse(parser, ENDSOLID, 0);
    };

    endfacet => {
            NSLog(@"t_ef");
        Parse(parser, ENDFACET, 0);
    };
    
    endloop => {
            NSLog(@"t_el");
        Parse(parser, ENDLOOP, 0);
    };
    
    facet => {
        NSLog(@"t_f");
        Parse(parser, FACET, 0);
    };

    outerloop => { 
            NSLog(@"t_ol");
        Parse(parser, OUTERLOOP, 0);
    };

    solid => {
        NSLog(@"t_s");
        Parse(parser, SOLID, 0);
    };
    
    float => {
        long length = te - ts;

        NSString *str = [[NSString alloc] initWithBytesNoCopy:(void *)ts 
                                            length:length 
                                            encoding:NSASCIIStringEncoding 
                                            freeWhenDone:false];
        NSLog(@"t_fp: %f", [str floatValue]);
        Parse(parser, FLOAT, [str floatValue]);
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

#import "XAStlParserIncludes.h"
#import "XAStlParser.h"
#import "XAStlTokenizer.h"

@implementation XAStlTokenizer

- (void) tokenize:(NSData *)inData
{
// #632
//facet normal 9.999130e-001 1.319381e-002 0.000000e+000
    NSLog(@"STARTING TOKENIZATION!");
    
    void* parser = ParseAlloc(malloc);

    int   cs    = 0;                        // current state
    char *p     = (char *)[inData bytes];   // data pointer
    char *pe    = p + [inData length];      // data end pointer
    char *eof   = pe;
    char *ts    = 0;
	char *te    = 0;
    int   act   = 0;

    %% write init;
    %% write exec;

    ParseFree(parser, free);

    NSLog(@"TOKENIZATION COMPLETE!");
}

@end
