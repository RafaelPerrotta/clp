#**********************************************/
#**** Este programa calcula o resultado de ****/
#**** um n�mero x elevado a um n�mero y    ****/
#**** negativo inteiro                     ****/
#**********************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#/===================================================================/}

print "Este programa calcula o valor de um numero x elevado a um numero y inteiro negativo."
x = input("Digite o numero x: ")
y = input("Digite o numero y: ")
if(x<>0): #(* /Verifica se x � diferente de zero. *)
	if(y<0): #(* Verifica se y � negativo. *)
		y=y*-1
		resultado = 1.0
		for n in range(1, y+1): #(* La�o para elevar o n�mero. *)
			resultado=resultado*x
			print resultado
		resultado=1/resultado #(* Transforma o n�mero em fra��o(pois o expoente � negativo). *)
		print "Resultado: "
		print resultado
	else:
		print "Valor de y nao e negativo. Entrada invalida."
else:
	print "Valor de x e zero. Entrada invalida."

#* ===================================================================*)