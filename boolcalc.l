%{
  #include <stdio.h>
  #include "boolcalc.tab.h"
%}
%option noyywrap

false    false|falsE|falSe|falSE|faLse|faLsE|faLSe|faLSE|fAlse|fAlsE|fAlSe|fAlSE|fALse|fALsE|fALSe|fALSE|False|FalsE|FalSe|FalSE|FaLse|FaLsE|FaLSe|FaLSE|FAlse|FAlsE|FAlSe|FAlSE|FALse|FALsE|FALSe|FALSE
true     true|truE|trUe|trUE|tRue|tRuE|tRUe|tRUE|True|TruE|TrUe|TrUE|TRue|TRuE|TRUe|TRUE
xor      xor|xoR|xOr|xOR|Xor|XoR|XOr|XOR
delim    [ \t]
whitedelims	   {delim}+

%%

"&"   {return AND;}
"|"   {return OR;}
"!"   {return NOT;}
{xor} {return XOR;}
{false}  {return FALSE;}
{true}  {return TRUE;}
{whitedelims}   {;}
"\n"  {return ENTER;}
.     {printf("\nLEX:ERROR! c = %s\n", yytext);}

%%
