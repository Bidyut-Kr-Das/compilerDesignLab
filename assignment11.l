%{
    #include<stdio.h>
    int num,flag=0,i;
%}
%%
[0-9]+ {
    num=atoi(yytext);
    if(num==2)
        printf("The number is prime.");
    else if(num==0 || num==1)
        printf("The number is not prime.");
    else{
        for(i=2;i<num;i++){
            if(num%i==0){
                flag=1;
                break;
            }
        }
        if(flag==0)
            printf("The number is prime.");
        else
            printf("The number is not prime.");
    }
    flag=0;
}
%%
void main(){
    printf("Enter a number: ");
    yylex();
}
int yywrap(){
    return 1;
}
