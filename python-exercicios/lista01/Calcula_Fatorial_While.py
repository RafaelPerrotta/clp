#***********************************************************************************************************/
#**** Este programa calcula a função fatorial de um número inteiro positivo utilizando um laço "while". ****/
#***********************************************************************************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#*===============================================================================*)

print "Este programa calcula a funcao fatorial de um numero inteiro positivo."
n = input("Digite o numero que deseja calcula o fatorial:");
if(n>=0): #* Verifica se o número passado é positivo. *) 
	resultado = 1
	while(n>0):
		resultado = resultado*n
		n=n-1
	print "Resultado: " +str(resultado)
else:
	print "Numero digitado invalido."

#*===============================================================================*)