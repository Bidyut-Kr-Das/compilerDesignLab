%{
#include<stdio.h>
int decimal,r,binary=0,p=1;
%}
%%
[0-9]+ { decimal=atoi(yytext);
            while(decimal>0)
            {
                r=decimal%2;
                binary+=r*p;
                p*=10;
                decimal/=2;
            }
            printf("The binary number is %d",binary);
            binary=0;
            p=1;
}
[a-zA-Z]+ { printf("Invalid input");}
. { printf("Invalid input");}
%%

void main() {
    printf("Enter a decimal number: ");
    yylex();
}
int yywrap() {
    return 1;
}
