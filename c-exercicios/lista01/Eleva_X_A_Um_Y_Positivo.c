/**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um n�mero x elevado a um n�mero y    ****/
/**** inteiro positivo.                    ****/
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
	printf("Este programa calcula o valor de um numero x elevado a um numero y inteiro positivo.\n");
	printf("Digite o numero x: \n");
	scanf("%f" , &x);
	printf("Digite o numero y: \n");
	scanf("%d" , &y);
	if(y>0) //Verifica se y � positivo.
	{
		resultado=1;
		for(n=1;n<=y;n++) //La�o para elevar o n�mero.
		{
			resultado=resultado*x;
		}
		printf("Resultado: %f\n", resultado);
	}
	else
	{
		printf("Valor de y nao e positivo. Entrada invalida.\n"); 
	}
	return 0;
}

//===================================================================//