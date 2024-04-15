%{
    #include<stdio.h>
    #include<string.h>
    int i = 0,j = 0,k,flag = 0;
    char identifier[10][10], operator[10][10];
%}
%%
[a-zA-Z][a-zA-Z0-9]* {
                    flag++;
                    strcpy(identifier[i],yytext);
                    i++;
                    }
"+"|"-"|"*"|"/" { 
                    flag--;
                    strcpy(operator[j],yytext);
                    j++;
                    }
%%
void main(){
    printf("Enter the expression: ");
    yylex();
    if(flag!=1)
        printf("Invalid.\n");
    else{
        printf("Operators are: ");
        for(k=0;k<j;k++)
            printf("%s ",operator[k]);
        printf("\nIdentifiers are: ");
        for(k=0;k<i;k++)
            printf("%s ",identifier[k]);
    }
    printf("\n");
    i=0;
    j=0;
    flag=0;
}
int yywrap(){
    return 1;
}