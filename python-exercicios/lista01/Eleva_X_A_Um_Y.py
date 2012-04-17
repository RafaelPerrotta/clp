#**********************************************/
#**** Este programa calcula o resultado de ****/
#**** um número x elevado a um número y    ****/
#**** inteiro .                            ****/
#**********************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#/===================================================================/}


print "Este programa calcula o valor de um numero x elevado a um numero y inteiro."
x = input("Digite o numero x: ")
y=input("Digite o numero y: ")
resultado= 1.0
if (y<0): # Verifica se y é negativo. *)
	y=y*-1
	for n in range(1,y+1):
		resultado=resultado*x
	resultado=1/resultado #(* Transforma o número em fração(pois o expoente é negativo *)
	print "Resultado: " +str(resultado)
else:
	if(y>0): #(*Se y é positivo. *)
		for n in range(1,y+1): # Laço para elevar o número.
			resultado=resultado*x
		print "Resultado: " +str(resultado)
	else: #(* Se y é zero. *)
		print "Resultado: 1"


#/===================================================================//