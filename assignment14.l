%{
    #include<stdio.h>
    #include<string.h>
    void check(char *);
%}
%%
[a-zA-Z]+"."* check(yytext);
%%
void main(){
    printf("\nEnter the word which you want to search:");
    yylex();
}
void check(char *str){
    FILE *fp;
    char temp[30];
    fp=fopen("input.txt","r");
    while((fscanf(fp,"%s",temp))!=EOF)
    {
        if(!(strcmp(temp,str)))
        {
            printf("Word is found\n");
            return;
        }
    }
    printf("Word is not found\n");
    return;
}
int yywrap(){
    return 1;
}