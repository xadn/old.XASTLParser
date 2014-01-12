
#line 1 "StlParser/tokenizer.rl"
#include <stdio.h>
#include "tokenizer.h"


#line 41 "StlParser/tokenizer.rl"

 

#line 12 "StlParser/tokenizer.c"
static const char _simple_lexer_actions[] = {
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7
};

static const char _simple_lexer_key_offsets[] = {
	0, 0, 2, 5, 7, 8, 9, 10, 
	11, 12, 13, 14, 15, 16, 17, 18, 
	19, 20, 21, 22, 23, 24, 25, 26, 
	27, 28, 29, 30, 31, 32, 33, 34, 
	35, 36, 37, 38, 39, 40, 51
};

static const char _simple_lexer_trans_keys[] = {
	48, 57, 46, 48, 57, 48, 57, 97, 
	99, 101, 116, 32, 110, 111, 114, 109, 
	97, 108, 117, 116, 101, 114, 32, 108, 
	111, 111, 112, 111, 108, 105, 100, 32, 
	109, 97, 112, 101, 114, 116, 101, 120, 
	32, 43, 45, 102, 111, 115, 118, 9, 
	13, 48, 57, 48, 57, 0
};

static const char _simple_lexer_single_lengths[] = {
	0, 0, 1, 0, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 7, 0
};

static const char _simple_lexer_range_lengths[] = {
	0, 1, 1, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 2, 1
};

static const char _simple_lexer_index_offsets[] = {
	0, 0, 2, 5, 7, 9, 11, 13, 
	15, 17, 19, 21, 23, 25, 27, 29, 
	31, 33, 35, 37, 39, 41, 43, 45, 
	47, 49, 51, 53, 55, 57, 59, 61, 
	63, 65, 67, 69, 71, 73, 83
};

static const char _simple_lexer_trans_targs[] = {
	2, 0, 3, 2, 0, 38, 0, 5, 
	0, 6, 0, 7, 0, 8, 0, 9, 
	0, 10, 0, 11, 0, 12, 0, 13, 
	0, 14, 0, 37, 0, 16, 0, 17, 
	0, 18, 0, 19, 0, 20, 0, 21, 
	0, 22, 0, 23, 0, 37, 0, 25, 
	0, 26, 0, 27, 0, 28, 0, 29, 
	0, 30, 0, 31, 0, 37, 0, 33, 
	0, 34, 0, 35, 0, 36, 0, 37, 
	0, 37, 1, 1, 4, 15, 24, 32, 
	37, 2, 0, 38, 37, 37, 0
};

static const char _simple_lexer_trans_actions[] = {
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 7, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 9, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 5, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 11, 
	0, 13, 0, 0, 0, 0, 0, 0, 
	13, 0, 0, 0, 15, 15, 0
};

static const char _simple_lexer_to_state_actions[] = {
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0
};

static const char _simple_lexer_from_state_actions[] = {
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 3, 0
};

static const char _simple_lexer_eof_trans[] = {
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 86
};

static const int simple_lexer_start = 37;
static const int simple_lexer_first_final = 37;
static const int simple_lexer_error = 0;

static const int simple_lexer_en_main = 37;


#line 44 "StlParser/tokenizer.rl"
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
    
    
#line 138 "StlParser/tokenizer.c"
	{
	cs = simple_lexer_start;
	ts = 0;
	te = 0;
	act = 0;
	}

#line 61 "StlParser/tokenizer.rl"
    
#line 148 "StlParser/tokenizer.c"
	{
	int _klen;
	unsigned int _trans;
	const char *_acts;
	unsigned int _nacts;
	const char *_keys;

	if ( p == pe )
		goto _test_eof;
	if ( cs == 0 )
		goto _out;
_resume:
	_acts = _simple_lexer_actions + _simple_lexer_from_state_actions[cs];
	_nacts = (unsigned int) *_acts++;
	while ( _nacts-- > 0 ) {
		switch ( *_acts++ ) {
	case 1:
#line 1 "NONE"
	{ts = p;}
	break;
#line 169 "StlParser/tokenizer.c"
		}
	}

	_keys = _simple_lexer_trans_keys + _simple_lexer_key_offsets[cs];
	_trans = _simple_lexer_index_offsets[cs];

	_klen = _simple_lexer_single_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + _klen - 1;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + ((_upper-_lower) >> 1);
			if ( (*p) < *_mid )
				_upper = _mid - 1;
			else if ( (*p) > *_mid )
				_lower = _mid + 1;
			else {
				_trans += (unsigned int)(_mid - _keys);
				goto _match;
			}
		}
		_keys += _klen;
		_trans += _klen;
	}

	_klen = _simple_lexer_range_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + (_klen<<1) - 2;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + (((_upper-_lower) >> 1) & ~1);
			if ( (*p) < _mid[0] )
				_upper = _mid - 2;
			else if ( (*p) > _mid[1] )
				_lower = _mid + 2;
			else {
				_trans += (unsigned int)((_mid - _keys)>>1);
				goto _match;
			}
		}
		_trans += _klen;
	}

_match:
_eof_trans:
	cs = _simple_lexer_trans_targs[_trans];

	if ( _simple_lexer_trans_actions[_trans] == 0 )
		goto _again;

	_acts = _simple_lexer_actions + _simple_lexer_trans_actions[_trans];
	_nacts = (unsigned int) *_acts++;
	while ( _nacts-- > 0 )
	{
		switch ( *_acts++ )
		{
	case 2:
#line 21 "StlParser/tokenizer.rl"
	{te = p+1;{
        printf("solidmap");
    }}
	break;
	case 3:
#line 25 "StlParser/tokenizer.rl"
	{te = p+1;{ 
        printf("facetnormal");
    }}
	break;
	case 4:
#line 29 "StlParser/tokenizer.rl"
	{te = p+1;{ 
        printf("outerloop");
    }}
	break;
	case 5:
#line 33 "StlParser/tokenizer.rl"
	{te = p+1;{ 
        printf("vertex");
    }}
	break;
	case 6:
#line 37 "StlParser/tokenizer.rl"
	{te = p+1;}
	break;
	case 7:
#line 17 "StlParser/tokenizer.rl"
	{te = p;p--;{ 
        printf("float");
    }}
	break;
#line 268 "StlParser/tokenizer.c"
		}
	}

_again:
	_acts = _simple_lexer_actions + _simple_lexer_to_state_actions[cs];
	_nacts = (unsigned int) *_acts++;
	while ( _nacts-- > 0 ) {
		switch ( *_acts++ ) {
	case 0:
#line 1 "NONE"
	{ts = 0;}
	break;
#line 281 "StlParser/tokenizer.c"
		}
	}

	if ( cs == 0 )
		goto _out;
	if ( ++p != pe )
		goto _resume;
	_test_eof: {}
	if ( p == eof )
	{
	if ( _simple_lexer_eof_trans[cs] > 0 ) {
		_trans = _simple_lexer_eof_trans[cs] - 1;
		goto _eof_trans;
	}
	}

	_out: {}
	}

#line 62 "StlParser/tokenizer.rl"

    return 0;
}