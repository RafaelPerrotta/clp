#**********************************************/
#**** Este programa calcula o resultado de ****/
#**** um n�mero x elevado a um n�mero y    ****/
#**** inteiro positivo.                    ****/
#**********************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#{/===================================================================/}

print "Este programa calcula o valor de um numero x elevado a um numero y inteiro positivo."
x= input("Digite o numero x: ")
y= input("Digite o numero y: ")
if(y>0): #{ Verifica se y � positivo. }
	resultado = 1.0
	for n in range(1, y+1): #(* La�o para elevar o n�mero. *)
			resultado=resultado*x
	print "Resultado: " +str(resultado)
else:
	print "Valor de y nao e positivo. Entrada invalida."

#//===================================================================//