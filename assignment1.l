%{
#include <stdio.h>
%}

%%
[0-9]+ {printf("Input is an integer");}
[a-zA-Z]+ {printf("Input is an alphabet");}
[0-9]+"."[0-9]+ {printf("Input is a float");}
. {printf("Input is other than alphabet characters");}
%%

int yywrap() {
    return 1;
}

void main() {
    printf("Enter the input: ");
    yylex();
}
