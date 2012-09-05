/****************************************************************************************************************************************/
/**** Este programa verifica se um número digitado pelo usuário faz parte da função 2 + 3n e se é par ou ímpar. Utiliza o laço "for" ****/
/****************************************************************************************************************************************/

/***********************************/
/**** Autor: Aron Daniel Lopes  ****/
/**** Data: 12/04/2011			****/
/***********************************/

#include<stdio.h>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

int i, n;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

//==========================================================================================================================//

main()
{
	printf("Este programa verifica se o numero digitado faz parte da funcao f(n)= 2+3n e se e par ou impar.\n");
	printf("Digite um numero: \n");
	scanf("%d", &n);
	for(i=0;(2+(3*i))<=n;i++)
	{
		if((2+(3*i))==n && (2+(3*i)) % 2 ==0) //Verifica se é par e se faz parte da função 2 + 3n;
		{
			printf("Valor de N e par = %d\n", n);
			return 0;
		}
		if((2+(3*i))==n && (2+(3*i)) % 2 ==1) //Verifica se é impar e se faz parte da função 2 + 3n;
		{
			printf("Valor de N e impar = %d\n", n);
			return 0;
		}
	}
	printf("O valor digitado nao esta dentro da funcao f(n)=2 + 3n\n");
	return 0;
}

//==========================================================================================================================//