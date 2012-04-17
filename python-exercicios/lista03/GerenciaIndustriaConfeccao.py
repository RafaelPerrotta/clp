# -*- coding: iso-8859-1 -*-
#(**************************************************************************)
#(**** Autor: Aron Daniel Lopes											****)
#(**** Data: 15/05/2011													****)
#(**** Programa criado para a disciplina de Conceitos de Linguagem		****)
#(**** de programação													****)
#(**** Este programa cadastra estilistas de uma industria de			****)
#(**** confecção além de determinadas informações						****)
#(**************************************************************************)


#(*%%%%%%%%%%%%%%%%%%%%%*)
#(* Declaração de tipos *)
#(*%%%%%%%%%%%%%%%%%%%%%*)

class Estacao:
	nome = ""
	codigo = 0


class Estilista:
	codigo = 0
	nome = ""
	salario = 0


class Roupa:
	codigo = 0
	descricao = ""
	estilista = 0
	estacao = 0
	ano = 0




#(*==========================================================================*)
#(*=========================== Inicio do Programa ===========================*)
#(*==========================================================================*)

print "Este programa realiza o cadastro e consulta de diversos estilistas e roupas."
print "Primeiro será realizado o cadastro dos 3 estilistas."

#(* For abaixo realiza cadastro dos estilistas. *)
estilistas = []
for auxiliar in range(3):
	estilistas.append(Estilista)
for auxiliar in range(3):
	estilistas[auxiliar].nome = raw_input("Digite o nome do estilista:")
	estilistas[auxiliar].codigo = auxiliar+1;
	estilistas[auxiliar].salario = input("Digite o salário do estilista " +str(estilistas[auxiliar].nome) +" que possui o código " +str(estilistas[auxiliar].codigo,) +" :")

	
#(* Agora serão castradas o código das estações do ano *)
estacoes = []
estacoes.append(Estacao)
estacoes.append(Estacao)
estacoes[0].nome="Primavera-Verão"
estacoes[0].codigo=1
estacoes[1].nome="Outono-Inverno"
estacoes[1].codigo=2

	
#(*==========================*)
#(*Inicialização da estrutura*)
#(*==========================*)

roupas = []
for auxiliar in range(20):
	roupas.append(Roupa)
	roupas[auxiliar].codigo=0
auxiliar=0
roupas_primavera=0
roupas_outono=0

#(*Agora iremos realizar o cadastro das roupas.*)
print "Serão cadastradas as roupas: (Limite de 10 roupas por estação)"
	
while (auxiliar < 4):
	print "Cadastro de nova peça: "
	print "Digite o cógigo da estação:"
	print "1. Primavera-Verão"
	auxiliar_cadastro = input("2. Outono-Inverno") 

	#(* Verifica se valor digitado é de alguma estação cadastrada *)
	#(* Verifica também se não ultrapassou o limite para cadastro de roupas de determinada estação *)
	if(((auxiliar_cadastro == 1) and (roupas_primavera < 2)) or ((auxiliar_cadastro == 2) and (roupas_outono < 2))):

		roupas[auxiliar].estacao=auxiliar_cadastro
	
		auxiliar_cadastro = input("Digite o código do estilista quem desenhou a roupa:")

		#(* Verifica se valor digitado é de algum estilista cadastrado *)
		print "--"
		print "a" +str(auxiliar_cadastro) + "--" +str(estilistas[0].nome) + "--" +str(estilistas[1].nome) + "--" +str(estilistas[2].codigo)
		if((auxiliar_cadastro == estilistas[0].codigo) or (auxiliar_cadastro == estilistas[1].codigo) or (auxiliar_cadastro == estilistas[2].codigo)):
			
			roupas[auxiliar].estilista=auxiliar_cadastro
				
			if(roupas[auxiliar].estacao == estacoes[0].codigo):

				roupas_primavera=roupas_primavera+1

			else:
				roupas_outono=roupas_outono+1
					
			#(*Realiza o cadastro das informações sobre a roupa. *)
			roupas[auxiliar].codigo=auxiliar
			roupas[auxiliar].descricao = raw_input("Digite a descrição da roupa:")
			roupas[auxiliar].ano = input("Digite o ano de criação da roupa:")
			auxiliar=auxiliar+1
		
		else: #(*Caso valor não existe *)
			print "Valor digitado não corresponde a nenhum estilista cadastrado. Roupa não cadastrada."

	else: #(*Caso valor não existe *)
		print "Valor digitado não corresponde a nenhuma estação cadastrada ou ultrapassou o limite para estação digitada. Roupa não cadastrada."

	
#(*Será exibido todas as roupas de determinada estação que foram cadastradas: *)
print "Agora será exibida as roupas da estação selecionada:"
print "1. Primavera-Verão"
auxiliar_consulta = input ("2. Outono-Inverno")
for auxiliar in range(4):

	if(roupas[auxiliar].estacao == auxiliar_consulta):
		print "--------------------------------------------"
		print "Código da roupa: ", +str(roupas[auxiliar].codigo)
		print "Estilista criador: "  +str(estilistas[roupas[auxiliar].estilista].nome)
		print "Ano de criação: "  +str(roupas[auxiliar].ano)
		print "Descrição da roupa: "  +str(roupas[auxiliar].descricao)
print "--------------------------------------------"

#(*==========================================================================*)
