yacc:
	bison -d contacts.y
	flex ex2.lex
	clang contacts.tab.c lex.yy.c -ly -ll
