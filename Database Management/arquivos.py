#coding=utf-8
import pickle
import mmap #Para tratar arquivos na memoria
import struct # pra gravar inteiro

listTabela = []
page = 256

#Classe Atributo
class Atributo:
	'(Nome(string),Tipo(string),Tamanho(int))'
	def __init__ (self,nome,tipo,tamanho):
		self.nome = nome
		self.tipo = tipo
		self.tamanho = tamanho

#Classe Tabela
class Tabela:
	'(Nome(string),qtdAtributos(int))'
	def __init__ (self,nome,qtdAtributos):
		self.nome = nome
		self.listAtributo = []
		self.qtdAtributos = qtdAtributos

	def addAtributo(self,Atributo):
		self.listAtributo.append(Atributo)

#Funcao que cria o Catalogo
def criaBD():
		try:
				with open("Catalogo.txt") as file:
						print("Catalogo ja foi criado")
		except IOError:
				with open("Catalogo.txt", "a") as arquivo:
						print ("catalogo ainda nao foi criado")
						esquema = input("Digite o nome do esquema:\n")
						arquivo.write(esquema+'\n')
				arquivo.close()

#Funcao que cria a definição da tabela no catalogo
def defineTabela(qtdTabela):
	with open("Catalogo.txt", "a") as arquivo:
		for i in range(qtdTabela):
			tabela = input("Digite o nome da tabela:\n")
			atributos = input("Digite quantos atributos a tabela tera:\n")
			atributos = int(atributos)
			newTabela = Tabela(tabela,atributos)
			for j in range(atributos):
				nomeAt = input("Digite o nome do atributo\n")
				tipoAt = input("Digite o tipo do atributo\n")
				if(tipoAt=="int"):
					tamanhoAt = 4
				elif(tipoAt=="varchar"):
					tamanhoAt = input("Digite o tamanho maximo de caracteres do varchar\n")
				else:
					print("Tipo invalido")
				newAtributo = Atributo(nomeAt, tipoAt, tamanhoAt) #Crio um novo atributo
				newTabela.addAtributo(newAtributo) #Dou um append desse atributo na nova tabela
			listTabela.append(newTabela) #Um append na nova lista que foi criada
	arquivo = open("Catalogo.txt", "a")
	for i in range(qtdTabela):
		arquivo.write(listTabela[i].nome+'\n') 
		arquivo.write(str(listTabela[i].qtdAtributos)+'\n')
		for j in range(listTabela[i].qtdAtributos):
			arquivo.write(listTabela[i].listAtributo[j].nome +" ")
			arquivo.write(listTabela[i].listAtributo[j].tipo +" ")
			arquivo.write(str(listTabela[i].listAtributo[j].tamanho)+ '\n')
	arquivo.close()

#Carrega a tabela de um arquivo txt para um arquivo formatado binario, respeitando a definicao da tabela
def carregaTabela():
	arquivoCat = open("Catalogo.txt", "r") #Abrir arquivo que contem a definição da tabela
	arquivoInsert = open("Insert.txt","r") #Abrir arquivo que contem as tuplas a serem inseridas na tabela

	#Le os dois arquivos e guarda em dois buffers
	buffer1 = arquivoInsert.readlines()
	buffer2 = arquivoCat.readlines()
	#Criacao de listas que irao conter as linhas dos arquivos
	linesInsert = []
	linesCat = []	
	flag = 0
	for line in buffer1:
		linesInsert.append(line.split())
	
	print (linesInsert)
	
	for line in buffer2:
		linesCat.append(line.split())
	
	#print (linesCat)
	#Sao criadas linesInsert e linesCat, pq mesmo que haja todo o arquivo nos buffer1 e 2, eles estao com \n o que dificultara nas conversoes, etc.
	#print (buffer1)
	#print (buffer2)
	#Varrer buffer procurando a primeira occorencia da igualdade, verificado se existe tabela no catalogo	
	
	for lineIns in linesInsert:
		for lineC in linesCat:
			if lineIns == lineC:
				print('Tabela encontrada: %s ' % lineIns[0]) #A lista possuira apenas um elemento que eh a tabela que estamos procurando
				positionInsert = linesInsert.index(lineIns) #pegar o indice onde foi encontrado a tabela no arquivo Insert
				positionCat = linesCat.index(lineC) #pegar o indice onde foi encontrado a tabela no Catalogo
				positionInsert+=1 # anda com o indice pra pegar os valores que irao ser inseridos na tabela
				
				positionCat+=1 # anda com o indice para verificar quantos atributos a lista possui

				quantidadeAtrib = int(linesCat[positionCat][0]) #guardo a quantidade de atributo, linesCat[positionCat] e uma lista, temos que acessar a posicao dessa lista para convertermos para inteiros
				tamanhoTupla = len(linesInsert[positionInsert]) #verifico quantos atributos existem na lista, tal lista e a tupla que sera inserida no banco

				if quantidadeAtrib != tamanhoTupla: #Se a quantidade de atributos forem diferentes da quantidade da tupla
					print ("Quantidade de atributos diferente da especificada")
					break
				else:
					positionCat+=1 #Novamente vou pra linha debaixo para ler os tipos de atributos
					print(linesCat[positionCat])
					for i in range(quantidadeAtrib):
						print (positionCat, positionInsert)
						#if e elses para verificar se atributos correspondem com a definição
						if ('varchar' in linesCat[positionCat] and linesInsert[positionInsert][i][0]=="'"):
							if(len(linesInsert[positionInsert][i])>int(linesCat[positionCat][2])):
								print("Varchar maior que o especificado")
								flag=0
								break
							else:
								flag=1
						elif(not ('varchar' in linesCat[positionCat]) and linesInsert[positionInsert][i][0]!="'"):
							flag=1 #flag 1 deu tudo certo 
						else:
							flag=0 #flag 0 deu errado
							break
						positionCat+=1
						i+=1
				linesInsert.remove(lineIns) # Remover o nome da tabela, pois iremos gravar apenas o registro
				if flag==1: #Se deu tudo certo grava no arquivo
					try: #Tenta abrir o arquivo
						with open('teste.bin') as arquivo:
							arquivo = open("teste.bin", mode="rb+")
							espacoFinal = -8 #Guardar tamanho do arquivo
							mm = mmap.mmap(arquivo.fileno(), 0, access=mmap.ACCESS_WRITE) # Guarda tudo que foi lido em mm (Memory mapped)

							mm.seek(-4,2) #Andar 4bytes para (2 para n de slot e 2 para espacolivre)
							content = mm.read(2) #Le dois bytes
							espacolivreTupla = struct.unpack('h', content)# Le do arquivo e transforma em inteiro
							espacoLivre = espacolivreTupla[0]#pega a posicao da tupla e torna em um inteiro
							content = mm.read(2)#Le do arquivo e transforma em inteiro
							qtdregistrosTupla = struct.unpack('h', content)
							qtdRegistros = int(qtdregistrosTupla[0])

							tamanhoString = 0 #Variavel para guardar tamanho da string
							fimdeRegistro = espacoLivre #Variavel para guardar onde o registro atual acaba(para inicio do espaco livre)
							numPaginas = 0    #Num de pagina (por enquanto n usado)
							tamanhoRegistro = 0 #Tamanho do registro para verificar se cabe na pagina atual
							mm.seek(0)			#seek para o início do arquivo
							#mm.write(str(numPaginas)) #-> Essa linha seria pra identificar a pagina
							#mm.seek(1,0)
							paginaCheia=False
							inseriu = True

							print("espaco livre %d", espacoLivre)
							print("espaco final %d", espacoFinal)
							mm.seek(espacoLivre,0) #mover para o inicio do espacoLivre
							for listas in linesInsert:
								tamanhoRegistro = 0
								for elementoLista in listas:
									if("'" in elementoLista):
										tamanhoRegistro += len(elementoLista) #Se for string guardo o tamanho dela
										tamanhoRegistro += 4 #Pois tenho que guardar o tamanho da string
									else:
										tamanhoRegistro += 4	#Se n for guardo inteiro
								
								print("O tamanho do Registro eh %d", tamanhoRegistro)
								print("lista %d",listas)
								print("espacolivre %d",espacoLivre)

								if (tamanhoRegistro >= (page - (espacoLivre + (2*qtdRegistros+4)))):#Eu tenho qtdRegistros, mas cada registro são 2bytes(por ser short int) e são 4 bytes reservados pro espaco livre e n de slots(registros)
									print("Pagina cheia")
									paginaCheia = True
									inseriu = False #se a pagina está cheia não insiro.

								print(inseriu)

								if(inseriu):
									for contentLista in listas:
										#Este if eh para gravar novas paginas no mesmo arquivo (testar)
										# if (tamanhoRegistro>=abs(espacoLivre+abs(espacoFinal) - page)):
										# 	print ("Pagina cheia")
										# 	print ("Nova pagina criada") 
										# 	#Seek para o final do arquivo
										# 	mm.seek(2)
										# 	#"Aloca" uma nova pagina
										# 	for i in range(page):   #page-2 pois um campo eh pro inicio do espaco livre e outro pra quantos registros
										# 		arquivo.write(" ")
										# 		i+=1
										#    #Pagina nova criada
										# 	arquivo.seek(-8,2)                 #Posicionar o cursor 8bytes para tras, partindo do fim do arquivo
										# 	arquivo.write(struct.pack('I', 0)) #Existem 0 registros no arquivo inicialmente
										# 	arquivo.write(struct.pack('I', 0)) #O espaco livre comeca na posicao zero
										# 	espacoFinal = -8                   #O ponteiro do final do arquivo andou duas casas, ou seja 8 bytes para tras
										if ("'" in contentLista): #se for string
											tamanhoString = len(contentLista)#Guarda quantos algarismos o numero inteiro tem
											mm.write(struct.pack('I', tamanhoString))
											#mm.seek(4,1)#anda 4 bytes a partir da posicao atual
											espacoLivre+=4 #Escrevi um inteiro entao ando 4 bytes, mas tenho que posicionar no proximo byte
											#print(" espacoLivre", espacoLivre)
											mm.write(contentLista)
											espacoLivre+=len(contentLista)
											tamanhoRegistro += len(contentLista) #Somar a string no tamanho total do registro
											
										#for i in range(len(contentLista)):
										else:
											inteiroConvertido = int(contentLista)
											mm.write(struct.pack('I', inteiroConvertido)) #escrevo o inteiro
											espacoLivre+=4 #Pq 4 eh o tamanho do inteiro
											#mm[espacoLivre] = contentLista[i] 
											tamanhoRegistro += 4 #Somar o valor de um inteiro no tamanho total do registro
									
									qtdRegistros+=1 #Inseri um registro, incremento a quantidade
									espacoFinal = -(2*qtdRegistros+4)#Tenho que inserir o ponteiro para inicio de cada registro. Para cada registro inserido, ando 2 bytes (a apartir do fim do arquivp) para tras para gravar tal informação
									mm.seek(espacoFinal, 2) #Vou para o fim do arquivo e ando com espacoFinal para quatro bytes para a esquerda
									mm.write(struct.pack('h',fimdeRegistro)) #short int 
									mm.seek(espacoLivre,0) #volto para onde estava anteriormente
									print("O registro inserido esta na posicao", fimdeRegistro)
									fimdeRegistro = espacoLivre #Quando acabar o for eu guardo o fim do registro, que era onde esta o espaco livre atualmente

							print ("O espaco final eh: %d" % espacoFinal)
							print ("O espaco livre comeca em %s" % espacoLivre)
							print ("A quantidade de registros eh %d" % qtdRegistros)
							mm.seek(-4,2)
							mm.write(struct.pack('h',espacoLivre))#gravando como short int
							mm.write(struct.pack('h',qtdRegistros))#grava como short
							
							#Teste para printar o primeiro inteiro
							# mm.seek(0)
							# content = mm.read(4)
							# testandoo = struct.unpack('I', content)
							# print("Tupla", testandoo)
							mm.flush()
							mm.close()
							arquivo.close()	
					except IOError: #Se o arquivo nao existe, cria-se o arquivo com o tamanho da pagina, preenchido de espacos
						arquivo = open('teste.bin', 'wb')  #Abro o arquivo com a opcao para escrita binaria
						
						for i in range(page):              #page +2 pq é um campo pra guardar qual pagina que é e um pro \n
							arquivo.write(" ")
							i+=1
						
						arquivo.seek(-8,2)                 #Posicionar o cursor 8bytes para tras, partindo do fim do arquivo
						arquivo.write(struct.pack('I', 0)) #Existem 0 registros no arquivo inicialmente
						arquivo.write(struct.pack('I', 0)) #O espaco livre comeca na posicao zero
						espacoFinal = -8                   #O ponteiro do final do arquivo andou duas casas, ou seja 8 bytes para tras

	#Fecha os arquivos
	arquivoCat.close()	 
	arquivoInsert.close()



#IMPORTANTEE

# page = 256

# def 
# try: #Tenta abrir o arquivo
# 	with open('teste.bin') as file:
# 		print 'Arquivo teste foi criado'
# except IOError: #Se o arquivo nao existe, cria-se o arquivo com o tamanho da pagina, preenchido de espacos
# 	arquivo = open('teste.bin', 'wb')
# 	for i in range(page-2): #page-2 pois um campo eh pro inicio do espaco livre e outro pra quantos registros
# 		arquivo.write(" ")
# 		i+=1
# 	arquivo.write("0") #Existem 0 registros no arquivo inicialmente
# 	arquivo.write("0") #O espaco livre comeca na posicao zero
# 	arquivo.close()

# with open("teste.bin", "rb+") as f: #Arquivo para leitura e escritatamanho = f.tell()
# 	mm = mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_WRITE) # Guarda tudo que foi lido em mm (Memory mapped)
#    print "oi"
#    mm[0] = "A"
#    mm.close()
#     f.seek(0) # Volta o curso parar o inicio do arquivo 
#     f.write("oioioi") # write the new line before
# f.close()
