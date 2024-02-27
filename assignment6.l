%{
    #include<stdio.h>
    int sum=0,i,n,r;
%}
%%
[0-9]+ {n=atoi(yytext);
        while(n>0)
        {
            r=n%10;
            sum=sum+r;
            n=n/10;
        }
        printf("Sum of digits is %d",sum);
        sum=0;
}
%%
void main()
{
    printf("Enter a number: ");
    yylex();
}
int yywrap()
{
    return 1;
}

