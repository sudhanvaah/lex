%{
#include<stdio.h>
int c1 = 0,c2 = 0;
%}
%%
[aeiouAEIOU] c1++;
[a-zA-Z] c2++;
\n printf("There are %d vowels and %d consonants ",c1,c2);
%%
main()
{
	\n printf("Enter string ");	
	yylex();
	
	return 0;
}
int yywrap()
{
	return 1;
}
