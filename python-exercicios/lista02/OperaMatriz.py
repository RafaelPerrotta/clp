#*******************************************************************************)
#*** Autor: Aron Daniel Lopes												****)
#*** Data: 06/05/2011														****)
#*** Este programa preenche uma matrix 5x5 com valores e realiza diversas  ****)
#*** operacos de soma e exibicao de linhas, colunas, diagonais e a matriz ****)
#*** inteira.																****)
#******************************************************************************)


#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*)
#&&&& Trecho de funcoes e procedimentos do programa &&&&*)
#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*)


# Esta funcao retorna a soma de determinada linha *)
def RetornaSomaLinha(linha):
	soma = 0
	for coluna in range(5):
		soma =soma + matriz_[linha-1][coluna]
	return soma



# Esta funcao retorna a soma de determinada coluna *)
def RetornaSomaColuna(coluna):
	soma=0
	for linha in range(5):
		soma=soma + matriz_[linha][coluna-1]
	return soma



# Esta funcao retorna a soma da diagonal principal *)
def RetornaSomaDiagonalP():
	soma = 0
	for linha in range(5):
		coluna=linha
		soma=soma + matriz_[linha][coluna]
	return soma



# Esta funcao retorna a soma da diagonal secundaria *)
def RetornaSomaDiagonalS():
	soma = 0
	coluna = 4
	for linha in range(5):
		soma = soma + matriz_[linha][coluna]
		coluna=coluna-1
	return soma

# Esta funcao retorna a soma de uma matriz*)
def RetornaSomaMatriz():
	soma = 0
	for linha in range(5):
		for coluna in range(5):
			soma=soma + matriz_[linha][coluna]
	return soma

#========================================================================*)
# =======================  Escopo principal =============================*)
#========================================================================*)


print "Este programa realiza diversas operacoes com uma matriz. "
	
# O for abaixo le os elementos e os insere na matriz. *)
matriz_ = []
for linha in range(5):
	matriz_.append([0]*5)
	for coluna in range(5):
		print ""
		matriz_[linha][coluna]=input("Digite o valor que ira compor o elemento da linha " + str(linha) + " e coluna " + str(coluna) + " :")

# For abaixo imprime a matriz digitada. *)
print ""
print "A matriz digitada:"
for linha in range(5):
	for coluna in range(5):
		print str(matriz_[linha][coluna]) + "     ",
	print ""

print "A soma da quarta linha: " + str(RetornaSomaLinha(4))
print "A soma da segunda coluna: " + str(RetornaSomaColuna(2))
print "A soma da diagonal principal: " + str(RetornaSomaDiagonalP())
print "A soma da diagonal secundaria: " + str(RetornaSomaDiagonalS())
print "A soma de todos os elementos da matriz: " + str(RetornaSomaMatriz())


#========================================================================*)