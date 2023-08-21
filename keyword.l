%{
#include<stdio.h>
%}

%%

if|else|while|int|switch|float|char {printf("Keywords\n");}
"+"|"-"|"*"|"/"  {printf("This is a operator\n");}
"%"|"&"|"^"|"#"|"@" {printf("It is a special symbol\n");}
.* printf("Identifiers");
%%

int yywrap(){};

int main(){
yylex();
return 0;}
