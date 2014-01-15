//
//  XAStlParserIncludes.h
//  StlParser
//
//  Created by andy on 1/12/14.
//  Copyright (c) 2014 xadn. All rights reserved.
//

#ifndef StlParser_XAStlParserIncludes_h
#define StlParser_XAStlParserIncludes_h

void *ParseAlloc(void *(*mallocProc)(size_t));
void ParseFree(void *p, void (*freeProc)(void*));
void Parse(void *yyp, int yymajor, float yyminor);

#endif
