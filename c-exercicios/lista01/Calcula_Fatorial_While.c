/***********************************************************************************************************/
/**** Este programa calcula a fun��o fatorial de um n�mero inteiro positivo utilizando um la�o "while". ****/
/***********************************************************************************************************/

/***********************************/
/**** Autor: Aron Daniel Lopes  ****/
/**** Data: 12/04/2011			****/
/***********************************/

#include<stdio.h>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

int n, resultado;

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
		while(n>0)
		{
			resultado=resultado*n;
			n=n--;
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