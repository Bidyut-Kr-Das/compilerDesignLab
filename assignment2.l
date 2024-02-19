%{
    #include<stdio.h>
    int i,n;
%}
%%
[0-9]+ {n=atoi(yytext);
    for(i=1;i<=n;i++)
    {
        if(n%i==0){
            printf("Factor: %d\n",i);
        }
    }
}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("Enter a number: ");
    yylex();
    return 0;
}