%{
#include <string.h>
#include "c.tab.h"
int yyerror(char* erro){
 printf("Erro na linha %d: %s\nEm %s\n", yylineno, erro, yytext);
}
%}


%option noyywrap
BRANCO [ ]
DIGITO [0-9]
NUMERO {DIGITO}+
LETRA [A-Za-z]
STRING \"[^"]*\"
IDENTIFICADOR {LETRA}+
ESPACO {BRANCO}+

%%
"==" { return IGUALIGUAL;}
"!=" { return DIFERENTEIGUAL;}
"if" {return IF;}
"while" {return WHILE;}
"*" {return VEZES;}
"+" {return MAIS;}
"-" {return MENOS;}
"=" {return IGUAL;}
"(" { return ABREP;}
")" { return FECHAP;}
":" {return DOISP;}
"{" {return ABREC;}
"}" {return FECHAC;}
";" {return PONTOV;}
"int" {return INT;}
"char" {return CHAR;}
{IDENTIFICADOR} { yylval.str = strdup(yytext); return IDENTIFICADOR;}
{STRING} { yylval.str = strdup(yytext); return STR;}
{NUMERO} { yylval.str = strdup(yytext); return NUM;}
{ESPACO} { yylval.str = strdup(yytext); return NULO;}
<<EOF>> { return FIM_ENTRADA; }
. { yyerror("Token desconhecido."); }
"\n" { yylineno++; return FIM_DE_LINHA; }
%%