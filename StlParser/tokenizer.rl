#include <stdio.h>
#include "tokenizer.h"

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
// %% this just fixes our syntax highlighting...

int tokenize(void)
{
    printf("hello tokenizerRRRRRR!\n");
    return 0;
}