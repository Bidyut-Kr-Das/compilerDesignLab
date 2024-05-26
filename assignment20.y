%{
    #include<stdio.h>
    #include<stdlib.h>

%}
%token A B NL
%%
start:S NL {printf("valid string\n");
                exit(0);
           }
;
S: A S B |
;
%%
int yyerror(char * msg){
    printf("invalid string\n");
    exit(0);
}
void main(){
    printf("Enter the string: ");
    yyparse();
}