/**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um n�mero x elevado a um n�mero y    ****/
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
	if(x!=0) //Verifica se x � diferente de zero.
	{
		if(y<0) //Verifica se y � negativo.
		{
			resultado=1;
			for(n=1;n<=(-1*y);n++) //La�o para elevar o n�mero.
			{
				resultado=resultado*x;
			}
			resultado=1/resultado; //Transforma o n�mero em fra��o(pois o expoente � negativo).
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