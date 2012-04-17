/*******************************************************************************)
(**** Autor: Aron Daniel Lopes												****)
(**** Data: 06/05/2011														****)
(**** Este programa preenche uma matrix 5x5 com valores e realiza diversas  ****)
(**** opera��es de soma e exibi��o de linhas, colunas, diagonais e a matriz ****)
(**** inteira.																****)
(*******************************************************************************/

#include<stdio.h>

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

	int matriz_[5][5];
	int linha, coluna;

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

/*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*)
(*&&&& Trecho de fun��es e procedimentos do programa &&&&*)
(*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*/


//* Esta fun��o retorna a soma de determinada linha *)
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



//(* Esta fun��o retorna a soma de determinada coluna *)
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



//(* Esta fun��o retorna a soma da diagonal principal *)
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



//(* Esta fun��o retorna a soma da diagonal secund�ria *)
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

//(* Esta fun��o retorna a soma de uma matriz*)
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

	printf("Este programa realiza diversas opera��es com uma matriz.\n");
	
	//(* O for abaixo le os elementos e os insere na matriz. *)
	for (linha=0; linha<5; linha++)
	{
		for (coluna=0; coluna<5; coluna++)
		{
			printf("Digite o valor que ir� compor o elemento da linha %d e coluna %d :\n", linha+1, coluna+1);
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
	printf("A soma da diagonal secund�ria: %d\n", RetornaSomaDiagonalS()); 
	printf("A soma de todos os elementos da matriz: %d\n", RetornaSomaMatriz()); 
	return 0;	
}

//(*========================================================================*)