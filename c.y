%{
#include <stdio.h>
#include "lex.yy.c"
%}
%union {
char *str;
};
%token<str> PRINT ABREP FECHAP ABREC FECHAC NULO PONTOV INT CHAR VIRGULA IDENTIFICADOR STR NUM FIM_ENTRADA DOISP IF WHILE VEZES MAIS MENOS IGUAL IGUALIGUAL DIFERENTEIGUAL FIM_DE_LINHA




%type<str> LOOP CONDICIONAL VALOR COMPARACAO EXPRESSAO ATRIBUICAO 




%%




COMANDOS: COMANDO COMANDOS
    | FIM_ENTRADA {return 0;};




COMANDO: FUNCAO
    | LOOP
    | CONDICIONAL
    | ATRIBUICAO {printf("%s",$1);}
    | EXPRESSAO {printf("%s",$1);} 



FUNCAO: IDENTIFICADOR ABREP IDENTIFICADOR NUM FECHAP PONTOV FIM_DE_LINHA{
    printf("def %s(%s):\n", $1, $4);
    }
    | IDENTIFICADOR ABREP FECHAP PONTOV FIM_DE_LINHA{
    printf("def %s():\n", $1);
    };



LOOP: WHILE ABREP VALOR COMPARACAO VALOR FECHAP ABREC FIM_DE_LINHA NULO EXPRESSAO FECHAC FIM_DE_LINHA {
    printf("while (%s%s%s):\n  %s\n",$3, $4, $5, $10);
    }
    | WHILE ABREP VALOR COMPARACAO VALOR FECHAP ABREC FIM_DE_LINHA NULO ATRIBUICAO FECHAC FIM_DE_LINHA {
    printf("while (%s%s%s):\n  %s\n",$3, $4, $5, $10);
    }




CONDICIONAL: IF ABREP VALOR COMPARACAO VALOR FECHAP ABREC FIM_DE_LINHA NULO EXPRESSAO FECHAC FIM_DE_LINHA {
    printf("if (%s%s%s):\n  %s\n",$3, $4, $5, $10);
    }
    | IF ABREP VALOR COMPARACAO VALOR FECHAP ABREC FIM_DE_LINHA NULO ATRIBUICAO FECHAC FIM_DE_LINHA {
    printf("if (%s%s%s):\n  %s\n",$3, $4, $5, $10);
    };


EXPRESSAO: IDENTIFICADOR IGUAL NUM MAIS NUM PONTOV FIM_DE_LINHA{
    $$ = malloc(100);  // Aloca espaço suficiente para a string resultante.
    sprintf($$, "%s = %s + %s\n", $1, $3, $5);
    }
    | IDENTIFICADOR IGUAL NUM MENOS NUM PONTOV FIM_DE_LINHA{
    $$ = malloc(100);  // Aloca espaço suficiente para a string resultante.
    sprintf($$, "%s = %s - %s\n", $1, $3, $5);
    }
    | IDENTIFICADOR IGUAL NUM VEZES NUM PONTOV FIM_DE_LINHA{
    $$ = malloc(100);  // Aloca espaço suficiente para a string resultante.
    sprintf($$, "%s = %s * %s\n", $1, $3, $5);
    };


ATRIBUICAO: INT NULO IDENTIFICADOR IGUAL NUM PONTOV FIM_DE_LINHA {
    $$ = malloc(100);
    sprintf($$, "%s = %s\n", $3, $5);
    }
    | CHAR NULO IDENTIFICADOR IGUAL STR PONTOV FIM_DE_LINHA {
    $$ = malloc(100);
    sprintf($$, "%s = %s\n", $3, $5);
    };


COMPARACAO: IGUALIGUAL { $$ = "==";}
    | DIFERENTEIGUAL { $$ = "!=";};


VALOR: IDENTIFICADOR { $$ = $1; }
    | STR { $$ = $1; }
    | NUM { $$ = $1; } ;

%%
int main(int argc, char **argv){
        if(argc!=2)    
            printf("Modo de uso: ./a.out arquivo.print\n");
        else{
                yyin = fopen(argv[1], "r");
                if(!yyin){
                        printf("Arquivo %s não encontrado!\n", argv[1]);
                        return -1;
                }
                if( yyparse() == 0 )
                    printf("PROGRAMA RECONHECIDO!!!\n");
        fclose(yyin);
    }
    return 0;
}