/***************************************************************************)
(**** Autor: Aron Daniel Lopes											****)
(**** Contato: aronlopes@gmail.com					****)
(**** Data: 15/05/2011													****)
(**** Programa criado para a disciplina de Conceitos de Linguagem		****)
(**** de programação													****)
(**** Este programa cadastra estilistas de uma industria de				****)
(**** confecção além de determinadas informações						****)
(***************************************************************************/

#include<stdio.h>
#include<string.h>

/*%%%%%%%%%%%%%%%%%%%%%*)
(* Declaração de tipos *)
(*%%%%%%%%%%%%%%%%%%%%%*/

typedef struct {
	char nome[255];
	int codigo;
} Estacao;

typedef struct {
	int codigo;
	char nome[255];
	float salario;
} Estilista;
	
typedef	struct {
	int codigo;
	char descricao[255];
	int estilista;
	int estacao;
	int ano;
} Roupa;


/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

	int auxiliar, auxiliar_cadastro, auxiliar_consulta;
	int roupas_primavera, roupas_outono;
	char nome[255];
	Estilista estilistas[3];
	Estacao estacoes[2];
	Roupa roupas[20];

/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

/*==========================================================================*)
(*=========================== Inicio do Programa ===========================*)
(*==========================================================================*/

main()
{
	printf("Este programa realiza o cadastro e consulta de diversos estilistas e roupas.\n");
	printf("Primeiro será realizado o cadastro dos 3 estilistas.\n");
	
	//(* For abaixo realiza cadastro dos estilistas. *)
	for(auxiliar=0;auxiliar<3;auxiliar++)
	{
		printf("Digite o nome do estilista:\n");
		scanf("%s", nome);
		strcpy(estilistas[auxiliar].nome,nome);
		estilistas[auxiliar].codigo=auxiliar+1;
		printf("Digite o salário do estilista %s que possui o codigo %d :\n", estilistas[auxiliar].nome, estilistas[auxiliar].codigo);
		scanf("%f", &estilistas[auxiliar].salario);
	}
	
	//(* Agora serão castradas o código das estações do ano *)
	strcpy(estacoes[0].nome,"Primavera-Verão");
	estacoes[0].codigo=1;
	strcpy(estacoes[1].nome,"Outono-Inverno");
	estacoes[1].codigo=2;
	
	
	/*==========================*)
	(*Inicialização da estrutura*)
	(*==========================*/
	for (auxiliar=0;auxiliar<4;auxiliar++)
	{
		roupas[auxiliar].codigo=0;
	}
	auxiliar=0;
	roupas_primavera=0;
	roupas_outono=0;
	
	//(*Agora iremos realizar o cadastro das roupas.*)
	printf("Serão cadastradas as roupas: (Limite de 10 roupas por estação)\n");
	
	while(auxiliar < 4)
	{
		printf("---------------------------------------------------------------------------------------------\n");
		printf("Cadastro de nova peça: \n");
		printf("Digite o cógigo da estação:\n");
		printf("1. Primavera-Verão\n");
		printf("2. Outono-Inverno\n"); 
		scanf("%d", &auxiliar_cadastro);
		//(* Verifica se valor digitado é de alguma estação cadastrada *)
		//(* Verifica também se não ultrapassou o limite para cadastro de roupas de determinada estação *)
		if(((auxiliar_cadastro == 1) && (roupas_primavera < 2)) || ((auxiliar_cadastro == 2) && (roupas_outono < 2)))
		{
		
			roupas[auxiliar].estacao=auxiliar_cadastro;
			
			printf("Digite o código do estilista quem desenhou a roupa:\n");
			scanf("%d", &auxiliar_cadastro);
			//(* Verifica se valor digitado é de algum estilista cadastrado *)
			if((auxiliar_cadastro == estilistas[0].codigo) || (auxiliar_cadastro == estilistas[1].codigo) || (auxiliar_cadastro == estilistas[2].codigo))
			{
			
				roupas[auxiliar].estilista=auxiliar_cadastro;
				
				if(roupas[auxiliar].estacao==estacoes[0].codigo)
				{
					roupas_primavera=roupas_primavera+1;
				}
				else
				{
					roupas_outono=roupas_outono+1;
				}
					
				//(*Realiza o cadastro das informações sobre a roupa. *)
				roupas[auxiliar].codigo=auxiliar;
				printf("Digite a descrição da roupa:\n");
				scanf("%s", nome);
				strcpy(roupas[auxiliar].descricao,nome);
				printf("Digite o ano de criação da roupa:\n");
				scanf("%d", &roupas[auxiliar].ano);
				auxiliar=auxiliar+1;
			
			}
			else //(*Caso valor não existe *)
				printf("Valor digitado não corresponde a nenhum estilista cadastrado. Roupa não cadastrada.\n");
		}
		else //(*Caso valor não existe *)
		{
			printf("Valor digitado não corresponde a nenhuma estação cadastrada ou ultrapassou o limite para estação digitada. Roupa não cadastrada.\n");
		}
	}
	printf("---------------------------------------------------------------------------------------------\n");
	
	//(*Será exibido todas as roupas de determinada estação que foram cadastradas: *)
	printf("Agora será exibida as roupas da estação selecionada:\n");
	printf("1. Primavera-Verão\n");
	printf("2. Outono-Inverno\n");
	scanf("%d", &auxiliar_consulta);
	for (auxiliar=0;auxiliar<4;auxiliar++)
	{
		if(roupas[auxiliar].estacao == auxiliar_consulta)
		{
			printf("--------------------------------------------\n");
			printf("Código da roupa: %d\n", roupas[auxiliar].codigo);
			printf("Estilista criador: %s\n", estilistas[roupas[auxiliar].estilista].nome);
			printf("Ano de criação: %d\n", roupas[auxiliar].ano);
			printf("Descrição da roupa: %s", roupas[auxiliar].descricao);
		}
	}	
	printf("--------------------------------------------\n");
	return 0;
}

/*==========================================================================*/
