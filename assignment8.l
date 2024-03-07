%{
    #include<stdio.h>
%}
%%
"+" {printf("Arithmatic operator.");}
"-" {printf("Arithmatic operator.");}
"*" {printf("Arithmatic operator.");}
"/" {printf("Arithmatic operator.");}
"%" {printf("Arithmatic operator.");}
"&&" {printf("Logical operator.");}
"||" {printf("Logical operator.");}
"==" {printf("Relational operator.");}
"!=" {printf("Relational operator.");}
"<=" {printf("Relational operator.");}
">=" {printf("Relational operator.");}
"=" {printf("Assignment operator.");}
"++" {printf("Increment operator.");}
"--" {printf("Decrement operator.");}
%%
void main()
{
    printf("Enter the expression: ");
    yylex();
}
int yywrap()
{
    return 1;
}
