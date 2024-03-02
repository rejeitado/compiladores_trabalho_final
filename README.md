Objetivo: 
Desenvolver um transpilador que permita a conversão de código-fonte escrito em C para código equivalente em Python. 
Para executar, usando o terminal, digite o comando “flex c.l” para gerar o código-fonte do analisador léxico, que contém as regras de análise léxica escritas na linguagem Lex/Flex. 
Em seguida, digite “bison -d c.y” para gerar o código-fonte do analisador sintático que contém as regras de análise sintática escritas na linguagem Yacc/Bison. 
Por conseguinte, digite “gcc c.tab.c” que é usado para compilar o código-fonte gerado pelo Bison. 
Por fim, digite “./a.out teste.txt”, para executar o arquivo “a”.

Justificativa da escolha de linguagens:
São linguagens apresentadas ao longo do curos de computação, além de serem duas linguagena que os componentes do grupo tem conhecimento.
