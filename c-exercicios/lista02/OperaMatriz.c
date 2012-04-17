/*******************************************************************************)
(**** Autor: Aron Daniel Lopes												****)
(**** Data: 06/05/2011														****)
(**** Este programa preenche uma matrix 5x5 com valores e realiza diversas  ****)
(**** operações de soma e exibição de linhas, colunas, diagonais e a matriz ****)
(**** inteira.																****)
(*******************************************************************************/

#include<stdio.h>

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

	int matriz_[5][5];
	int linha, coluna;

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

/*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*)
(*&&&& Trecho de funções e procedimentos do programa &&&&*)
(*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*/


//* Esta função retorna a soma de determinada linha *)
int RetornaSomaLinha(int linha)
{
	int soma;
	soma=0;
	for (coluna=0; coluna<5; coluna++)
	{
		soma=soma + matriz_[linha][coluna];
	}
	return soma;
}



//(* Esta função retorna a soma de determinada coluna *)
int RetornaSomaColuna(int coluna)
{
	int soma;
	soma=0;
	for (linha=0; linha<5; linha++)
	{
		soma= soma + matriz_[linha][coluna];
	}
	return soma;
}



//(* Esta função retorna a soma da diagonal principal *)
int RetornaSomaDiagonalP()
{
	int soma;
	soma=0;
	for (linha=0; linha<5; linha++)
	{
		coluna=linha;
		soma=soma + matriz_[linha][coluna];
	}
	return soma;
}



//(* Esta função retorna a soma da diagonal secundária *)
int RetornaSomaDiagonalS()
{
	int soma;
	soma=0;
	coluna=5;
	for (linha=0; linha<5; linha++)
	{
		soma=soma + matriz_[linha][coluna];
		coluna=coluna-1;
	}
	return soma;
}

//(* Esta função retorna a soma de uma matriz*)
int RetornaSomaMatriz()
{
	int soma;
	soma=0;
	for (linha=0; linha<5; linha++)
	{
		for (coluna=0; coluna<5; coluna++)
		{
			soma=soma + matriz_[linha][coluna];
		}
	}
	return soma;
}

/*========================================================================*)
(* =======================  Escopo principal =============================*)
(*========================================================================*/

main()
{

	printf("Este programa realiza diversas operações com uma matriz.\n");
	
	//(* O for abaixo le os elementos e os insere na matriz. *)
	for (linha=0; linha<5; linha++)
	{
		for (coluna=0; coluna<5; coluna++)
		{
			printf("Digite o valor que irá compor o elemento da linha %d e coluna %d :\n", linha+1, coluna+1);
			scanf("%d", &matriz_[linha][coluna]);
		}
	}
	
	//(* For abaixo imprime a matriz digitada. *)
	printf("A matriz digitada:\n\n");
	for (linha=0; linha<5; linha++)
	{
		for (coluna=0; coluna<5; coluna++)
		{
			printf("%d   ", matriz_[linha][coluna]);
		}
		printf("\n");
	}
	
	printf("\n\nA soma da quarta linha: %d\n", RetornaSomaLinha(3)); 
	printf("A soma da segunda coluna: %d\n", RetornaSomaColuna(1)); 
	printf("A soma da diagonal principal: %d\n", RetornaSomaDiagonalP()); 
	printf("A soma da diagonal secundária: %d\n", RetornaSomaDiagonalS()); 
	printf("A soma de todos os elementos da matriz: %d\n", RetornaSomaMatriz()); 
	return 0;	
}

//(*========================================================================*)