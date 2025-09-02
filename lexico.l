%%

%class Lexico
%standalone
%public
%line
%column

/* macros */
Digitos             = [0-9]+
Sinais              = [+\-]
Inteiros            = {Sinais}?{Digitos}
Decimais            = {Sinais}?{Digitos}"."{Digitos}
Numeros             = {Decimais}|{Inteiros}
Operadores          = [+\-*/]
EspacoVazio         = [ \t\r\n]+
EspacoSemQuebra     = [ \t]+
DevName             = ("Gabriel"{EspacoSemQuebra}+"Schorsch"{EspacoSemQuebra}+"Amadeu") | Gabriel\ Schorsch\ Amadeu{EspacoSemQuebra}*
Equacao             = {Numeros}{EspacoSemQuebra}*{Operadores}{EspacoSemQuebra}*{Numeros}
Caracteres          = [a-zA-Z_áàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ]
Aspas               = \"
Comentario1         = \#.*
Comentario2         = "//".*
LiteraisComAspa     = {Aspas}({Caracteres}|[0-9]|{EspacoSemQuebra})*{Aspas}
Literais            = ({Caracteres}|[0-9])+{EspacoSemQuebra}*

%%
{DevName} {
    System.out.printf("DevName: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{Inteiros} {
    System.out.printf("Inteiros: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{Decimais} {
    System.out.printf("Decimais: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{Operadores} {
    System.out.printf("Operadores: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{Equacao} {
    System.out.printf("Equacao: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{LiteraisComAspa} {
    System.out.printf("Strings com aspas: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{Literais} {
    System.out.printf("Literais: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
({Comentario1}|{Comentario2}) {
    System.out.printf("Comentario: %s encontrado na linha %d coluna %d\n", yytext(), yyline+1, yycolumn+1);
}
{EspacoVazio} { /* ignora espaços */ }
. { /* caractere isolado ignorado */ }