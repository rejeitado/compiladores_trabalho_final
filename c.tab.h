/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_C_TAB_H_INCLUDED
# define YY_YY_C_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    PRINT = 258,                   /* PRINT  */
    ABREP = 259,                   /* ABREP  */
    FECHAP = 260,                  /* FECHAP  */
    ABREC = 261,                   /* ABREC  */
    FECHAC = 262,                  /* FECHAC  */
    NULO = 263,                    /* NULO  */
    PONTOV = 264,                  /* PONTOV  */
    INT = 265,                     /* INT  */
    CHAR = 266,                    /* CHAR  */
    VIRGULA = 267,                 /* VIRGULA  */
    IDENTIFICADOR = 268,           /* IDENTIFICADOR  */
    STR = 269,                     /* STR  */
    NUM = 270,                     /* NUM  */
    FIM_ENTRADA = 271,             /* FIM_ENTRADA  */
    DOISP = 272,                   /* DOISP  */
    IF = 273,                      /* IF  */
    WHILE = 274,                   /* WHILE  */
    VEZES = 275,                   /* VEZES  */
    MAIS = 276,                    /* MAIS  */
    MENOS = 277,                   /* MENOS  */
    IGUAL = 278,                   /* IGUAL  */
    IGUALIGUAL = 279,              /* IGUALIGUAL  */
    DIFERENTEIGUAL = 280,          /* DIFERENTEIGUAL  */
    FIM_DE_LINHA = 281             /* FIM_DE_LINHA  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 5 "c.y"

char *str;

#line 94 "c.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_C_TAB_H_INCLUDED  */
