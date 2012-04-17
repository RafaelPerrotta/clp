/**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um n�mero x elevado a um n�mero y    ****/
/**** inteiro .                            ****/
/**********************************************/

/***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
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
	if(y<0) //Verifica se y � negativo.
	{
		for(n=1;n<=(-1*y);n++) //La�o para elevar o n�mero.
		{
			resultado=resultado*x;
		}
		resultado=1/resultado; //Transforma o n�mero em fra��o(pois o expoente � negativo).
		printf("Resultado: %f\n", resultado);
	}
	else
	{
		if(y>0)//Se y � positivo.
		{
			for(n=1;n<=y;n++) //La�o para elevar o n�mero.
			{
				resultado=resultado*x;
			}
			printf("Resultado: %f\n", resultado);
		}
		else //Se y � zero.
		{
			printf("Resultado: 1\n");
		}
	}
	return 0;
}

//===================================================================//