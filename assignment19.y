%{
    #include<stdio.h>
    int valid=1;

%}
%token digit letter
%%
start: letter S
S: letter S
| digit S
|
;
%%
int yyerror(){
    printf("\n it is not identifier.\n");
    valid=0;
    return 0;
}
void main(){
    printf("Enter a name to test for identifier: ");
    yyparse();
    if(valid)
    printf("Its an identifier.\n");
}