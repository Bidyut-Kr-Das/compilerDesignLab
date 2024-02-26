%{
    #include<stdio.h>
%}
%%
if|else|while|for|switch|return|break|continue {printf("valid keyword.");}
[0-9]+ {printf("It is a number.");}
[a-zA-Z]+ {printf("Other than keyword and number.");}
%%
void main()
{
    printf("Enter the input string:");
    yylex();
}
int yywrap()
{
    return 1;
}
