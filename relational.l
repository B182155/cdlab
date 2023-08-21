%{
#include<stdio.h>
%}

%%
">"|"<"|"<="|">="|"=="|"!=" {printf("Relational operator: %s ",yytext);}
%%

int yywrap(){}
int main(){
	printf("Enter a symbol");
	yylex();
}