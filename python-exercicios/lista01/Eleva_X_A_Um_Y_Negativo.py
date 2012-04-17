#**********************************************/
#**** Este programa calcula o resultado de ****/
#**** um número x elevado a um número y    ****/
#**** negativo inteiro                     ****/
#**********************************************}

#***************************************************************/
#**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
#**** Data: 12/04/2011			                            ****/
#***************************************************************}

#/===================================================================/}

print "Este programa calcula o valor de um numero x elevado a um numero y inteiro negativo."
x = input("Digite o numero x: ")
y = input("Digite o numero y: ")
if(x<>0): #(* /Verifica se x é diferente de zero. *)
	if(y<0): #(* Verifica se y é negativo. *)
		y=y*-1
		resultado = 1.0
		for n in range(1, y+1): #(* Laço para elevar o número. *)
			resultado=resultado*x
			print resultado
		resultado=1/resultado #(* Transforma o número em fração(pois o expoente é negativo). *)
		print "Resultado: "
		print resultado
	else:
		print "Valor de y nao e negativo. Entrada invalida."
else:
	print "Valor de x e zero. Entrada invalida."

#* ===================================================================*)