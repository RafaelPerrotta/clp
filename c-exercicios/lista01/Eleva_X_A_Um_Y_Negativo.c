/**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um número x elevado a um número y    ****/
/**** negativo inteiro                     ****/
/**********************************************/

/***********************************/
/**** Autor: Aron Daniel Lopes  ****/
/**** Data: 12/04/2011			****/
/***********************************/

#include<stdio.h>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

int y, n;
float x, resultado;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

//===================================================================//

main()
{
	printf("Este programa calcula o valor de um numero x elevado a um numero y inteiro negativo.\n");
	printf("Digite o numero x: \n");
	scanf("%f" , &x);
	printf("Digite o numero y: \n");
	scanf("%d" , &y);
	if(x!=0) //Verifica se x é diferente de zero.
	{
		if(y<0) //Verifica se y é negativo.
		{
			resultado=1;
			for(n=1;n<=(-1*y);n++) //Laço para elevar o número.
			{
				resultado=resultado*x;
			}
			resultado=1/resultado; //Transforma o número em fração(pois o expoente é negativo).
			printf("Resultado: %f\n", resultado);
		}
		else
		{
			printf("Valor de y nao e negativo. Entrada invalida.\n"); 
		}
		return 0;
	}
	else
	{
		printf("Valor de x e zero. Entrada invalida.\n");
	}
}

//===================================================================//