%{
#include<stdio.h>
%}
%%
([_]+[a-zA-Z0-9]+[_]*)+|([a-zA-Z][_a-zA-Z0-9]*) printf("Identifier! Yayyy!");
.* printf("Not an identifier");
%%
int main()
{
 printf("Enter a string \t");
 yylex();
 return 0;
}
int yywrap()
{
 return 1;
}
