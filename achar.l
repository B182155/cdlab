%{
#include <stdio.h>
int c = 0,c1=0;
%}

%%
[a-zA-Z0-9]+ {c=yyleng; fun(c);}

%%
int fun(int l){
 	if(yytext[0]=='A'){
		if(l==3){
			printf("Word: %s\n",yytext);
			c1++;
		}
	}	
}
int yywrap(){return 1;}
int main() {
    yylex();
    printf("%d",c1);
    return 0;
}

