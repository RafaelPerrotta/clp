#**********************************************/
#**** Este programa calcula o resultado de ****/
#**** um n�mero x elevado a um n�mero y    ****/
#**** inteiro .                            ****/
#**********************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#/===================================================================/}


print "Este programa calcula o valor de um numero x elevado a um numero y inteiro."
x = input("Digite o numero x: ")
y=input("Digite o numero y: ")
resultado= 1.0
if (y<0): # Verifica se y � negativo. *)
	y=y*-1
	for n in range(1,y+1):
		resultado=resultado*x
	resultado=1/resultado #(* Transforma o n�mero em fra��o(pois o expoente � negativo *)
	print "Resultado: " +str(resultado)
else:
	if(y>0): #(*Se y � positivo. *)
		for n in range(1,y+1): # La�o para elevar o n�mero.
			resultado=resultado*x
		print "Resultado: " +str(resultado)
	else: #(* Se y � zero. *)
		print "Resultado: 1"


#/===================================================================//