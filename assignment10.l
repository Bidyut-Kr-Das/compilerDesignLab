%{
    #include<stdio.h>
    #include<string.h>
    int i,j,flag=1;
%}
%%
[a-zA-Z0-9]* {
    for(i=0,j=yyleng-1;i<=j;i++,j--)
        if(yytext[i]!=yytext[j])
        {
            flag=0;
            break;
        }
    if(flag==1)
        printf("The string is palindrome.");
    else
        printf("The string is not palindrome.");
    flag=1;
}
%%
void main(){
    printf("Enter the string: ");
    yylex();
}
int yywrap(){
    return 1;
}