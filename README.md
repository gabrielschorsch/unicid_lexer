## Exemplo de analisador léxico

Este repositório contém a implementação de um analisador léxico simples utilizando JFLEX para gerar um executável Java.

A execução acontece dentro de um devcontainer, que utiliza como base a imagem do java:17 e já configura todas as variáveis de ambiente necessárias, além de um Makefile responsável por facilitar o fluxo de execução e agilizar os testes.

## Estrutura do projeto

Todos os arquivos principais estão localizados na raiz do projeto. Abaixo está uma breve descrição de cada um deles:

- `Makefile`: Script utilizado para automatizar o processo de build e execução do projeto.
- `input.txt`: Arquivo de texto contendo os valores de teste para o analisador
- `lexico.l`: Arquivo de definição das regras léxicas do analisador


Ao executar `make run`, serão gerados os arquivos `Lexico.java` e `Lexico.class` e, automaticamente, será executado o comando `java Lexico input.txt`.

Também é possível executar `make clean` para remover todos os arquivos gerados anteriormente e limpar o diretório.

## Exemplo de uso

Para utilizar o analisador léxico, basta seguir os passos abaixo:

1. Certifique-se de que o Docker está instalado em sua máquina.
2. Clone este repositório em sua máquina local.

Caso deseje utilizar um devcontainer, você pode abrir o projeto tanto no Visual Studio Code ou outra IDE, com a extensão "Dev Containers" instalada, ou utilizar o Docker diretamente com o Dockerfile.

### Utilizando VSCODE
Supondo que você já tenha o Docker e a extensão "Dev Containers" instalados:

3.1 Abra o projeto no Visual Studio Code.
3.2 Abra as opções (Ctrl + Shift + P) e selecione "Remote-Containers: Reopen in Container".
3.3 Aguarde até que o ambiente de desenvolvimento seja carregado.
3.4 Abra o terminal integrado  `(Ctrl + `)  e execute o comando `make run`.

Os arquivos serao gerados na pasta raiz e o resultado será mostrado no terminal integrado.

### Utilizando CLI 

Caso deseje utilizar o Docker diretamente com o Dockerfile, siga os passos abaixo:

3.1 Abra um terminal e navegue até o diretório do projeto.
3.2 Execute o comando `docker build -t lexico .` para construir a imagem Docker.
3.3 Após a construção da imagem, execute o comando `docker run --rm lexico` para executar o analisador léxico.

O resultado da execução será exibido no terminal e os tokens reconhecidos serão mostrados.

### Considerações Finais

Este projeto foi desenvolvido como uma atividade da disciplina de Projeto de linguagens de programação na Universidade da Cidade de São Paulo (UNICID) para o 7º semestre do curso de Ciência da Computação.

#### Enunciado da atividade

Exercicios 1: Front-End de Compiladores

Crie um analisador léxico utilizando o JFlex que identifique em um arquivo de texto chamado “input.txt” as cadeias de caracteres:

- numéricos inteiros positivos e ou negativos;
- numéricos decimais positivos e ou negativos;
- literais (texto como um todo);
- operadores: “ + ” ,   “ - ”  ,  “ * ”  ,  “ / ”;
- desenvolvedor do “Analizador Léxico”, isto é nome completo do aluno que desenvolveu.


#### Desenvolvido por
Gabriel Schorsch Amadeu