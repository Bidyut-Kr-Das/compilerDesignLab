%{
    #include<stdio.h>
    int count=0;
%}
%%
if|else|while|for|do|break|continue|return|switch {count++;}
"\n" {printf("Number of keywords: %d\n",count);}
%%
void main(){
    printf("Enter the string: ");
    yylex();
}
int yywrap(){
    return 1;
}
