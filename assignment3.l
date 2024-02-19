%{
#include<stdio.h>    
int i,n,sum=0;
%}
%%
[0-9]+ {n=atoi(yytext);

    for(i=1;i<n;i++){
        if(n%i==0){
            printf("\nfactor: %d",i);
            sum=sum+i;
        }
    }
    if(sum==n){
        printf("\nThis is a perfect number");
    }
    else{
        printf("\nThe number is not perfect");
    }
}
%%
int yywrap(){
    return 1;
}
void main(){
    printf("Enter a number: ");
    yylex();
}
