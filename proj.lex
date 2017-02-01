/* Count integer numbers in a file */

%{

#include <stdio.h>
int nums = 0;

%}

%%

[0-9]           { ++nums; }

%%

int main(void){
        yylex();
        printf("Found %d digits.\n", nums);
}
