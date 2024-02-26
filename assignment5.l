%{
    #include<stdio.h>
    int count=0;
%}
%%
if|else|while|for|do|break|continue|return|switch {count++;}
[a-zA-Z]+ {printf("This does not count as a keyword.\n");}
"\n" {printf("Number of keywords: %d\n",count);}
%%
void main(){
    printf("Enter the string: ");
    yylex();
}
int yywrap(){
    return 1;
}
