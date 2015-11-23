%{
#include<stdio.h>
%}
%%
[0-9]*[13579] printf("Number is odd");
[0-9]+ printf("Number is even");
.* printf("Not number. you are dumb");
%%
int main()
{
 printf("Enter a number \t");
 yylex();
 return 0;
}
int yywrap()
{
 return 1;
}
