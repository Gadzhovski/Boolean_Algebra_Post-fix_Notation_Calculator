%{
#include<stdio.h>

int yylex (void);
extern int yyparse();
extern FILE* yyin;

%}

%define api.value.type {double}
%token TRUE  
%token FALSE
%token ENTER

%left OR
%left AND
%right NOT    
%left XOR

%%

prog :  prog exprp
	| exprp
	;
exprp	: expr ENTER { if($1) printf("TRUE\n");else printf("FALSE\n");}
;
expr :    expr expr OR	{$$ = $1 || $2;}
	| expr expr AND {$$ = $1 && $2;}
	| expr expr XOR {$$ = (! $1) && $2 || $1 && (! $2);}
	| expr NOT {$$ = (! $1);}
	| TRUE  {$$ = 1;}
	| FALSE  {$$ = 0;}
	;
%%

main(void){
	
    return(yyparse());          /* Start the parser */
}
 
yyerror(s)
char *s; {
    printf("Bison error: %s\n", s);
}
 
yywrap(){
    return(0);
}

