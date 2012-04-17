#******************************************************************)
#*** Autor: Aron Daniel Lopes									****)
#*** Data: 07/05/2011											****)
#*** Este programa busca por subcadeias de caracter dentre de 	****)
#*** cadeias maiores.											****)
#******************************************************************)

print "Este programa procura uma subcadeia de caracteres dentro de uma cadeia:"
	
frase = raw_input("Digite uma frase:")
print ""
subcadeia= raw_input("Digite a subcadeia desejada:")
print ""

achou = 0

#Verifica se o tamanho da frase digitada e menor que o da subcadeia.
if( len(frase) >= len(subcadeia)):
	
	#For que percorre toda a frase, letra por letra ate onde e possivel
	# ainda encontrar uma subcadeia completa dentro da frase.
	for indice_letra in range(0,(len(frase)-len(subcadeia)+1)):
	
		#Compara letras.
		if(frase[indice_letra] == subcadeia[0]):
		
			percorre_frase=indice_letra
			percorre_subcadeia=0
			
			#Enquanto as letras comparadas forem iguais faca.
			while((percorre_subcadeia < len(subcadeia)) and (frase[percorre_frase] == subcadeia[percorre_subcadeia])):
				percorre_frase=percorre_frase+1;
				percorre_subcadeia=percorre_subcadeia+1;
			
			#Verifica se subcadeia foi percorrida ate a ultima letra.
			if(percorre_subcadeia == len(subcadeia)):
				achou=achou+1;
	
	print "Foram encontradas: " + str(achou) + " subcadeias dentro da frase."

else: #Caso tenha sido digitado uma subcadeia maior que a frase.
	print "Subcadeia digitada e maior que frase digitada." 

#==================================================================*)