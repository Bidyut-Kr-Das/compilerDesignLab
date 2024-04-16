%{
#include <stdio.h>
%}

%%
.*bb.*   { printf("The string contains 'bb'\n"); }
.*       { printf("The string does not contain 'bb'\n"); }
%%

void main() {
    printf("Enter a string: ");
    yylex();
    
}
int yywrap() {
    return 1;
}