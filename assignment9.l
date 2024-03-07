%{
    #include<stdio.h>
    #include<string.h>
    int lineCount = 0, wordCount = 0, charCount = 0;
    int spaceCount = 0;
%}
%%
[\n] {lineCount++; charCount += yyleng;}
[ \t] {spaceCount++;charCount += yyleng;}
[^\t\n ]+ {wordCount++; charCount += yyleng;}
%%
void main(){
    printf("Enter a string: ");
    yylex();
    printf("\nNumber of lines: %d\n", lineCount);
    printf("Number of words: %d\n", wordCount);
    printf("Number of characters: %d\n", charCount);
    printf("Number of spaces: %d\n", spaceCount);
}
int yywrap(){
    return 1;
}