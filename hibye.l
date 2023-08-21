%{
#include <stdio.h>
%}

%%
"hi" {printf("bye");}
.* {printf("INVALID");}
%%
int yywrap(){}
int main()
{
printf("enter the input");
yylex();
return 0;
}