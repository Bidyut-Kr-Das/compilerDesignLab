%{
    #include<stdio.h>
%}
%s A DEAD
%%
<INITIAL>0 BEGIN A;
<INITIAL>[^0\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not accepted.");}
<A>0 BEGIN A;
<A>[^0\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Accepted.");}
<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Not accepted.");}
%%
void main(){
    printf("enter String: ");
    yylex();
}
int yywrap(){
    return 1;
}