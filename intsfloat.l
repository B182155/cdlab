%option noyywrap
%{
	#include<stdio.h>
	int i=0,j=0;
%}

%%
[0-9]+ {i++;}
[0-9]+.[0-9]+ {j++;}
%%
int main()
{
	printf("enter number");
	yylex();
	printf("ints:%d\nfloats:%d",i,j);
	return 0;
}