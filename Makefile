# Nome do arquivo principal (sem .java)
CLASSE=Lexico
ARQUIVO=input.txt

# Gera o scanner com JFlex
scanner:
	jflex $(CLASSE).l

# Compila todos os .java
build: scanner
	javac *.java

# Executa o programa principal
run: build
	@printf '%s\n' '------------------------------'
	java $(CLASSE) $(ARQUIVO)

# Limpa arquivos gerados (.class e arquivos do JFlex)
clean:
	rm -f *.class *~ *.java
