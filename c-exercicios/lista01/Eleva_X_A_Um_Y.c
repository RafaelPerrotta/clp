/**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um número x elevado a um número y    ****/
/**** inteiro .                            ****/
/**********************************************/

/***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
/**** Data: 12/04/2011			                            ****/
/***************************************************************/

#include<stdio.h>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

int y, n;
float x, resultado;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

//===================================================================//

main()
{
	printf("Este programa calcula o valor de um numero x elevado a um numero y inteiro.\n");
	printf("Digite o numero x: \n");
	scanf("%f" , &x);
	printf("Digite o numero y: \n");
	scanf("%d" , &y);
	resultado=1;
	if(y<0) //Verifica se y é negativo.
	{
		for(n=1;n<=(-1*y);n++) //Laço para elevar o número.
		{
			resultado=resultado*x;
		}
		resultado=1/resultado; //Transforma o número em fração(pois o expoente é negativo).
		printf("Resultado: %f\n", resultado);
	}
	else
	{
		if(y>0)//Se y é positivo.
		{
			for(n=1;n<=y;n++) //Laço para elevar o número.
			{
				resultado=resultado*x;
			}
			printf("Resultado: %f\n", resultado);
		}
		else //Se y é zero.
		{
			printf("Resultado: 1\n");
		}
	}
	return 0;
}

//===================================================================//