#***********************************************************************************************************/
#**** Este programa calcula a fun��o fatorial de um n�mero inteiro positivo utilizando um la�o "while". ****/
#***********************************************************************************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#*===============================================================================*)

print "Este programa calcula a funcao fatorial de um numero inteiro positivo."
n = input("Digite o numero que deseja calcula o fatorial:");
if(n>=0): #* Verifica se o n�mero passado � positivo. *) 
	resultado = 1
	while(n>0):
		resultado = resultado*n
		n=n-1
	print "Resultado: " +str(resultado)
else:
	print "Numero digitado invalido."

#*===============================================================================*)