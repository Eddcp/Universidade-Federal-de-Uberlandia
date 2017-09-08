import arquivos

#Criando menu
op = True
while op:
    print ("1 - CREATE SCHEMA")
    print ("2 - CREATE TABLE")
    print ("3 - INSERT INTO")
    print ("Pressione enter para sair\n")
    op = raw_input("O que gostaria de fazer? \n")
    if op == "1":
        arquivos.criaBD()
    elif op == "2":
        qtdTabela = input("Digite quantas tabelas deseja criar:\n")
        arquivos.defineTabela(int(qtdTabela))
    elif op == "3":
        arquivos.carregaTabela()
    elif op != "":
        print ("Opcao invalida")
