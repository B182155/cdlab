%{
	#include<stdio.h>
	#include "cal.tab.h"
	int yylval;
%}

%%

[0-9]+  {yylval=atoi(yytext);return Number;};
\n      return 0;
. return yytext[0];

%%

int yywrap(){ return 1;};