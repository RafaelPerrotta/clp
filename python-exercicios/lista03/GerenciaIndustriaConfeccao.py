# -*- coding: iso-8859-1 -*-
#(**************************************************************************)
#(**** Autor: Aron Daniel Lopes											****)
#(**** Data: 15/05/2011													****)
#(**** Programa criado para a disciplina de Conceitos de Linguagem		****)
#(**** de programa��o													****)
#(**** Este programa cadastra estilistas de uma industria de			****)
#(**** confec��o al�m de determinadas informa��es						****)
#(**************************************************************************)


#(*%%%%%%%%%%%%%%%%%%%%%*)
#(* Declara��o de tipos *)
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
print "Primeiro ser� realizado o cadastro dos 3 estilistas."

#(* For abaixo realiza cadastro dos estilistas. *)
estilistas = []
for auxiliar in range(3):
	estilistas.append(Estilista)
for auxiliar in range(3):
	estilistas[auxiliar].nome = raw_input("Digite o nome do estilista:")
	estilistas[auxiliar].codigo = auxiliar+1;
	estilistas[auxiliar].salario = input("Digite o sal�rio do estilista " +str(estilistas[auxiliar].nome) +" que possui o c�digo " +str(estilistas[auxiliar].codigo,) +" :")

	
#(* Agora ser�o castradas o c�digo das esta��es do ano *)
estacoes = []
estacoes.append(Estacao)
estacoes.append(Estacao)
estacoes[0].nome="Primavera-Ver�o"
estacoes[0].codigo=1
estacoes[1].nome="Outono-Inverno"
estacoes[1].codigo=2

	
#(*==========================*)
#(*Inicializa��o da estrutura*)
#(*==========================*)

roupas = []
for auxiliar in range(20):
	roupas.append(Roupa)
	roupas[auxiliar].codigo=0
auxiliar=0
roupas_primavera=0
roupas_outono=0

#(*Agora iremos realizar o cadastro das roupas.*)
print "Ser�o cadastradas as roupas: (Limite de 10 roupas por esta��o)"
	
while (auxiliar < 4):
	print "Cadastro de nova pe�a: "
	print "Digite o c�gigo da esta��o:"
	print "1. Primavera-Ver�o"
	auxiliar_cadastro = input("2. Outono-Inverno") 

	#(* Verifica se valor digitado � de alguma esta��o cadastrada *)
	#(* Verifica tamb�m se n�o ultrapassou o limite para cadastro de roupas de determinada esta��o *)
	if(((auxiliar_cadastro == 1) and (roupas_primavera < 2)) or ((auxiliar_cadastro == 2) and (roupas_outono < 2))):

		roupas[auxiliar].estacao=auxiliar_cadastro
	
		auxiliar_cadastro = input("Digite o c�digo do estilista quem desenhou a roupa:")

		#(* Verifica se valor digitado � de algum estilista cadastrado *)
		print "--"
		print "a" +str(auxiliar_cadastro) + "--" +str(estilistas[0].nome) + "--" +str(estilistas[1].nome) + "--" +str(estilistas[2].codigo)
		if((auxiliar_cadastro == estilistas[0].codigo) or (auxiliar_cadastro == estilistas[1].codigo) or (auxiliar_cadastro == estilistas[2].codigo)):
			
			roupas[auxiliar].estilista=auxiliar_cadastro
				
			if(roupas[auxiliar].estacao == estacoes[0].codigo):

				roupas_primavera=roupas_primavera+1

			else:
				roupas_outono=roupas_outono+1
					
			#(*Realiza o cadastro das informa��es sobre a roupa. *)
			roupas[auxiliar].codigo=auxiliar
			roupas[auxiliar].descricao = raw_input("Digite a descri��o da roupa:")
			roupas[auxiliar].ano = input("Digite o ano de cria��o da roupa:")
			auxiliar=auxiliar+1
		
		else: #(*Caso valor n�o existe *)
			print "Valor digitado n�o corresponde a nenhum estilista cadastrado. Roupa n�o cadastrada."

	else: #(*Caso valor n�o existe *)
		print "Valor digitado n�o corresponde a nenhuma esta��o cadastrada ou ultrapassou o limite para esta��o digitada. Roupa n�o cadastrada."

	
#(*Ser� exibido todas as roupas de determinada esta��o que foram cadastradas: *)
print "Agora ser� exibida as roupas da esta��o selecionada:"
print "1. Primavera-Ver�o"
auxiliar_consulta = input ("2. Outono-Inverno")
for auxiliar in range(4):

	if(roupas[auxiliar].estacao == auxiliar_consulta):
		print "--------------------------------------------"
		print "C�digo da roupa: ", +str(roupas[auxiliar].codigo)
		print "Estilista criador: "  +str(estilistas[roupas[auxiliar].estilista].nome)
		print "Ano de cria��o: "  +str(roupas[auxiliar].ano)
		print "Descri��o da roupa: "  +str(roupas[auxiliar].descricao)
print "--------------------------------------------"

#(*==========================================================================*)
