%%{
 
  machine simple_lexer;
  
  float       = ('+'|'-')?[0-9]+'.'[0-9]+;
  solidmap    = 'solid map';
  facetnormal = 'facet normal';
  outerloop   = 'outer loop';
  vertex      = 'vertex';
  identifier  = [a-zA-Z][a-zA-Z_]+; 
  
  main := |*
    
    float => { 
        printf("float");
    };

    solidmap => {
        printf("solidmap");
    };

    facetnormal => { 
        printf("facetnormal");
    };

    outerloop => { 
        printf("outerloop");
    };

    vertex => { 
        printf("vertex");
    };
    
    space;
    
  *|;
 
}%%
 
%% write data;

// %% Objective-C goes here
//
//  XAStlTokenizer.m
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//

#import "XAStlTokenizer.h"

@implementation XAStlTokenizer

- (void) tokenize
{
    NSLog(@"tokenize!");
}

@end
