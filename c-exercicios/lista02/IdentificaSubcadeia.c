/*******************************************************************)
(**** Autor: Aron Daniel Lopes									****)
(**** Data: 07/05/2011											****)
(**** Este programa busca por subcadeias de caracter dentre de 	****)
(**** cadeias maiores.											****)
(*******************************************************************/
 
#include<stdio.h>
#include<string.h>

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

	char frase[255], subcadeia[255];
	int achou, indice_letra, percorre_frase, percorre_subcadeia;

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

/*==================================================================*/

main()
{
	printf("Este programa procura uma subcadeia de caracteres dentro de uma cadeia: \n");
	
	printf("Digite uma frase:\n");
	fgets(frase, 255, stdin);
	
	printf("Digite a subcadeia desejada:\n");
	fgets(subcadeia, 255, stdin);
	
	achou = 0;
	
	//Verifica se o tamanho da frase digitada é menor que o da subcadeia.
	if( strlen(frase) >= strlen(subcadeia))
	{
		
		//For que percorre toda a frase, letra por letra até onde é possível
		// ainda encontrar uma subcadeia completa dentro da frase.
		for (indice_letra=0;indice_letra<=(strlen(frase)-strlen(subcadeia)+1);indice_letra++)
		{
		
			//Compara letras.
			if(frase[indice_letra] == subcadeia[0])
			{
			
				percorre_frase=indice_letra;
				percorre_subcadeia=0;
				
				//Enquanto as letras comparadas forem iguais faça.
				while((percorre_subcadeia <= strlen(subcadeia)) && (frase[percorre_frase] = subcadeia[percorre_subcadeia]))
				{
					percorre_frase=percorre_frase+1;
				}
				
				//Verifica se subcadeia foi percorrida até a ultima letra.
				if(percorre_subcadeia-1 == strlen(subcadeia))
				{
					achou=achou+1;
				}
			}
		}
		
		printf("Foram encontrada: %d subcadeias dentro da frase. \n", achou);
		return 0;
	}
	else //Caso tenha sido digitado uma subcadeia maior que a frase.
	{
		printf("Subcadeia digitada é maior que frase digitada.\n"); 
		return 1;
	}
}

/*==================================================================*/