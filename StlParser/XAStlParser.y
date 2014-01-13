//lemon -q XAStlParser.y && mv XAStlParser.c XAStlParser.m

%token_type {double}

%left PLUS MINUS.
%left DIVIDE TIMES.

%include {
    #include <assert.h>
    #include "XAStlParserIncludes.h"
    #import "XAStlParser.h"
}

%syntax_error {
    printf("syntax error");
//    NSLog(@"syntax error");
}

program ::= expr(A). {
    printf("hello parser: %f", A);
//    NSLog(@"hello parser!: %f", A);
}

expr(A) ::= OPENP expr(B) CLOSEP. { A = (B); }
expr(A) ::= expr(B) PLUS expr(C). { A = B + C; }
expr(A) ::= expr(B) DIVIDE expr(C). { A = B / C; }
expr(A) ::= expr(B) TIMES expr(C). { A = B * C; }
expr(A) ::= expr(B) MINUS expr(C). { A = B - C; }
expr(A) ::= DOUBLE(B). { A = B; }
