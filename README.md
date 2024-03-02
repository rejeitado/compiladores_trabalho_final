# Disciplina: 
* Compiladores <br />

# Professor: <br />
* Sebastião Alves

# Componentes: <br />
* Allysson Almeida Peixoto Oliveira<br />
* Antonio Fabricio Martins de Lima<br />
* Francisco Moises Lima do Nascimento<br />
* Igor Figueiredo da Silva<br />

# Objetivo: <br />
* Desenvolver um transpilador que permita a conversão de código-fonte escrito em C para código equivalente em Python. <br />

# Justificativa da escolha de linguagens:<br />
* São linguagens apresentadas ao longo do curos de computação, além de serem duas linguagena que os componentes do grupo tem conhecimento.

# Funcionalidades do transpilador de C para Python: <br/>
* Atribuição de inteiros e strings.<br />
* Expressão entre inteiros sendo do tipo x operador y (operadores +,-,*).<br />
* Chamada de função (com 1 parâmetro ou sem) entre valores (IDENTIFICADOR,STRING,NUM).<br />
* Condicional if sendo a comparação (comparações == e !=) entre valores (IDENTIFICADOR,STRING,NUM) com uma expressão ou atribuição.<br />
* Loop while sendo a comparação (comparações == e !=) entre valores (IDENTIFICADOR,STRING,NUM) com uma expressão ou atribuição.<br />

# Limitação: <br/>
* O transpilador possui várias limitações como não suporte a utilização de bibliotecas, tratamento de exceções, conversões numéricas e etc.<br />
* Aceitamos apenas as condicionais que seja == e !=.<br />
* Aceitamos if e while desde que contenham abre e fecha parênteses, abre e fecha chaves, quebra de linha após o abre chaves e depois do fecha chaves e espaço após a primeira a quebra da primeira linha.<br />

# Tokens: (foram adicionados entre "")<br/>
* "==" <br/>
* "!=" <br/>
* "if" <br/>
* "while" <br/>
* "*" <br/>
* "+" <br/>
* "-" <br/>
* "=" <br/>
* "(" <br/>
* ")" <br/>
* ":" <br/>
* "{" <br/>
* "}" <br/>
* ";" <br/>
* "int" <br/>
* "char" <br/>

# Comandos DEF, IF e While presente na documentação e no codigo "c.y" <br/>

# Compilar: <br/>
* Para executar, usando o terminal, digite o comando “flex c.l” para gerar o código-fonte do analisador léxico, que contém as regras de análise léxica escritas na linguagem Lex/Flex.<br /> 
* Em seguida, digite “bison -d c.y” para gerar o código-fonte do analisador sintático que contém as regras de análise sintática escritas na linguagem Yacc/Bison. <br />
* Por conseguinte, digite “gcc c.tab.c” que é usado para compilar o código-fonte gerado pelo Bison. <br />
* Por fim, digite “./a.out teste.txt”, para executar o arquivo.<br />
