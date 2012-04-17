/*********************************************************************************************************/
/**** Este programa calcula a fun��o fatorial de um n�mero inteiro positivo utilizando um la�o "for". ****/
/*********************************************************************************************************/

/***********************************/
/**** Autor: Aron Daniel Lopes  ****/
/**** Data: 12/04/2011			****/
/***********************************/

#include<stdio.h>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

int n, i, resultado;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

//===============================================================================//

main()
{
	printf("Este programa calcula a funcao fatorial de um numero inteiro positivo.\n");
	printf("Digite o numero que deseja calcula o fatorial:\n");
	scanf("%d", &n);
	if(n>=0) //Verifica se o n�mero passado � positivo.
	{
		resultado=1;
		for(i=n; i>0; i--)
		{
			resultado=resultado*i;
		}
		printf("Resultado: %d\n", resultado);
	}
	else
	{
		printf("Numero digitado invalido.\n");
	}
	return 0;
}

//===============================================================================//
