%{
    #include<stdio.h>
    int count1=0,count2=0;

%}
%%
[0-9]*[1|3|5|7|9] {count1++;}
[0-9]*[2|4|6|8|0] {count2++;}
%%
void main(){
    extern FILE *yyin;
    yyin=fopen("file2.txt","r");
    yylex();
    printf("\n No of odd number is %d",count1);
    printf("\n No of even number is %d",count2);
}
int yywrap(){
    return 1;
}