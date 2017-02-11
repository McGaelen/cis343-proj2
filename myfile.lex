
%{

#include <stdio.h>

%}

%%

\w+@\w+(\.\w+)+     { printf("EMAIL"); } //Email
[A-Z][a-z]+         { printf("NAME"); } //Name
[0-9]{3}-[0-9]{4}   { printf("PHONE NUMBER"); } //Phone number
[0-9]{5}            { printf("ZIP CODE"); } //Zip code
[0-9]{4}            { printf("STREET NUMBER"); } //4-digit street number
[A-Z]+              { printf("STREET NAME"); } //Street name with no spaces
(DR|RD|AV)          { printf("STREET"); } //Street type

%%

int main(void) {
    yylex();
}
