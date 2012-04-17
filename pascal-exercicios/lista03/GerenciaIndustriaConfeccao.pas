(***************************************************************************)
(**** Autor: Aron Daniel Lopes											****)
(**** Data: 15/05/2011													****)
(**** Programa criado para a disciplina de Conceitos de Linguagem		****)
(**** de programa��o													****)
(**** Este programa cadastra estilistas de uma industria de				****)
(**** confec��o al�m de determinadas informa��es						****)
(***************************************************************************)

Program GerenciaIndustriaConfeccao;

(*%%%%%%%%%%%%%%%%%%%%%*)
(* Declara��o de tipos *)
(*%%%%%%%%%%%%%%%%%%%%%*)

Type

	Estacao = Record
		nome: String;
		codigo: Integer;
	end;
	
	
	Estilista = Record
		codigo: Integer;
		nome: String;
		salario: Real;
	end;
	
	
	Roupa = Record
		codigo: Integer;
		descricao: String;
		estilista: Integer;
		estacao: Integer;
		ano: Integer;
	end;


(*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*)

Var
	auxiliar, auxiliar_cadastro, auxiliar_consulta: Integer;
	roupas_primavera, roupas_outono: Integer;
	estilistas: Array[1..3] of Estilista;
	estacoes: Array[1..2] of Estacao;
	roupas: Array[1..20] of Roupa;

(*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*)

(*==========================================================================*)
(*=========================== Inicio do Programa ===========================*)
(*==========================================================================*)

begin

	WriteLn('Este programa realiza o cadastro e consulta de diversos estilistas e roupas.');
	WriteLn('Primeiro ser� realizado o cadastro dos 3 estilistas.');
	
	(* For abaixo realiza cadastro dos estilistas. *)
	for auxiliar:=1 to 3 do
	begin
		WriteLn('Digite o nome do estilista:');
		ReadLn(estilistas[auxiliar].nome);
		estilistas[auxiliar].codigo:=auxiliar;
		WriteLn('Digite o sal�rio do estilista ',estilistas[auxiliar].nome, ' que possui o c�digo ', estilistas[auxiliar].codigo, ' :');
		ReadLn(estilistas[auxiliar].salario);
	end;
	
	(* Agora ser�o castradas o c�digo das esta��es do ano *)
	estacoes[1].nome:='Primavera-Ver�o';
	estacoes[1].codigo:=1;
	estacoes[2].nome:='Outono-Inverno';
	estacoes[2].codigo:=2;
	
	
	(*==========================*)
	(*Inicializa��o da estrutura*)
	(*==========================*)
	for auxiliar:=1 to 20 do
	begin
		roupas[auxiliar].codigo:=0;
	end;
	auxiliar:=1;
	roupas_primavera:=0;
	roupas_outono:=0;
	
	(*Agora iremos realizar o cadastro das roupas.*)
	WriteLn('Ser�o cadastradas as roupas: (Limite de 10 roupas por esta��o)');
	
	while auxiliar <= 20 do
	begin
		WriteLn('Cadastro de nova pe�a: ');
		WriteLn('Digite o c�gigo da esta��o:');
		WriteLn('1. Primavera-Ver�o');
		WriteLn('2. Outono-Inverno'); 
		ReadLn(auxiliar_cadastro);
		(* Verifica se valor digitado � de alguma esta��o cadastrada *)
		(* Verifica tamb�m se n�o ultrapassou o limite para cadastro de roupas de determinada esta��o *)
		if(((auxiliar_cadastro = 1) and (roupas_primavera < 10)) or ((auxiliar_cadastro = 2) and (roupas_outono < 10))) then
		begin
		
			roupas[auxiliar].estacao:=auxiliar_cadastro;
			
			WriteLn('Digite o c�digo do estilista quem desenhou a roupa:');
			ReadLn(auxiliar_cadastro);
			(* Verifica se valor digitado � de algum estilista cadastrado *)
			if((auxiliar_cadastro = estilistas[1].codigo) or (auxiliar_cadastro = estilistas[2].codigo) or (auxiliar_cadastro = estilistas[3].codigo)) then
			begin
			
				roupas[auxiliar].estilista:=auxiliar_cadastro;
				
				if(roupas[auxiliar].estacao=estacoes[1].codigo) then
				begin
					roupas_primavera:=roupas_primavera+1;
				end
				else
					roupas_outono:=roupas_outono+1;
					
				(*Realiza o cadastro das informa��es sobre a roupa. *)
				roupas[auxiliar].codigo:=auxiliar;
				WriteLn('Digite a descri��o da roupa:');
				ReadLn(roupas[auxiliar].descricao);
				WriteLn('Digite o ano de cria��o da roupa:');
				ReadLn(roupas[auxiliar].ano);
				auxiliar:=auxiliar+1;
			
			end
			else (*Caso valor n�o existe *)
				WriteLn('Valor digitado n�o corresponde a nenhum estilista cadastrado. Roupa n�o cadastrada.');
		end
		else (*Caso valor n�o existe *)
			WriteLn('Valor digitado n�o corresponde a nenhuma esta��o cadastrada ou ultrapassou o limite para esta��o digitada. Roupa n�o cadastrada.');
	end;
	
	(*Ser� exibido todas as roupas de determinada esta��o que foram cadastradas: *)
	WriteLn('Agora ser� exibida as roupas da esta��o selecionada:');
	WriteLn('1. Primavera-Ver�o');
	WriteLn('2. Outono-Inverno');
	ReadLn(auxiliar_consulta);
	for auxiliar:=1 to 20 do
	begin
		if(roupas[auxiliar].estacao = auxiliar_consulta) then
		begin
			WriteLn('--------------------------------------------');
			WriteLn('C�digo da roupa: ', roupas[auxiliar].codigo);
			WriteLn('Estilista criador: ', estilistas[roupas[auxiliar].estilista].nome);
			WriteLn('Ano de cria��o: ', roupas[auxiliar].ano);
			WriteLn('Descri��o da roupa: ', roupas[auxiliar].descricao);
		end;
	end;	
	WriteLn('--------------------------------------------');
	Halt(0);
end.

(*==========================================================================*)
