%{
    #include<stdio.h>
%}
%%
[aeiouAEIOU].[a-zA-Z0-9]+ {
        printf("Starting with vowel.\n");}
[^aeiouAEIOU].[a-zA-Z0-9]+ {printf("The string does not start with a vowel\n");} 
%%
void main(){
    printf("Enter the string: ");
    yylex();
}
int yywrap(){
    return 1;
}
