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

#define BUFSIZE 128

int tokenize(void)
{
    static char buf[BUFSIZE];
	int cs, act, have = 0, curline = 1;
	char *ts, *te = 0;
	int done = 0;
    
    char *p = buf + have, *pe, *eof = 0;
    int len, space = BUFSIZE - have;

    printf("hello tokenizerRRRRRR!\n");
    
    %% write init;
    %% write exec;

    return 0;
}