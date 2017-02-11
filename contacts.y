%code top {
#include <stdio.h>
}

%union{
	int iValue;
	char *sValue;
}

%start file
%token NAME
%type<sValue> NAME
%token STREET_NUMBER
%type<iValue> STREET_NUMBER
%token STREET_NAME
%type<sValue> STREET_NAME
%token STREET_TYPE
%type<sValue> STREET_TYPE
%token ZIP_CODE
%type<iValue> ZIP_CODE
%token EMAIL
%type<sValue> EMAIL
%token PHONE_NUMBER
%type<sValue> PHONE_NUMBER
%type<sValue> contact

%%
file:		 contact
|		     contact file
;
contact:		NAME NAME STREET_NUMBER STREET_NAME STREET_TYPE ZIP_CODE
;

%%
int main(void){
	yyparse();
}

int yyerror (char *msg) {
	return fprintf (stderr, "YACC: %s\n", msg);
}
