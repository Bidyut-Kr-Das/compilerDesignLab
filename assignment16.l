%{
    #include<stdio.h>
    #include<string.h>
    char word[] = "I";
    int count = 0;
%}
%%
[a-zA-Z]+ {if(strcmp(yytext,word)==0)count++;}
[^a-zA-Z]+ ;
%%
void main(){
    extern FILE *yyin;
    yyin = fopen("input.txt","r");
    yylex();
    if(count==0)
        printf("The word %s does not occur in the file\n",word);
    else
        printf("The word %s occurs %d times in the file\n",word,count);
}
int yywrap(){
    return 1;
}