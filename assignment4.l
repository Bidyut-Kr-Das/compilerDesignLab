%{
    #include<stdio.h>
%}
%%
if|else|while|for|switch|return|break|continue {printf("valid keyword\n");}
[0-9]+ {printf("\n It is a number.");}
. {printf("\n Other than keyword and number.");}
%%
void main()
{
    printf("\n Enter the input string:");
    yylex();
}
int yywrap()
{
    return 1;
}
