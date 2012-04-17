#*********************************************************************************************************
#**** Este programa calcula a função fatorial de um número inteiro positivo utilizando um laço "for". ****
#*********************************************************************************************************

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}


#*===============================================================================*)

print "Este programa calcula a funcao fatorial de um numero inteiro positivo."
n = input("Digite o numero que deseja calcula o fatorial:")
if(n>=0):  #Verifica se o número passado é positivo.
	resultado = 1
	for i in range(1,n+1):
		resultado = resultado*i
	print "Resultado: " +str(resultado)
else:
	print "Numero digitado invalido."

	
#*===============================================================================*) 