(***************************************************************************)
(**** Autor: Aron Daniel Lopes											****)
(**** Data: 15/05/2011													****)
(**** Programa criado para a disciplina de Conceitos de Linguagem		****)
(**** de programação													****)
(**** Este programa cadastra estilistas de uma industria de				****)
(**** confecção além de determinadas informações						****)
(***************************************************************************)

Program GerenciaIndustriaConfeccao;

(*%%%%%%%%%%%%%%%%%%%%%*)
(* Declaração de tipos *)
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
	WriteLn('Primeiro será realizado o cadastro dos 3 estilistas.');
	
	(* For abaixo realiza cadastro dos estilistas. *)
	for auxiliar:=1 to 3 do
	begin
		WriteLn('Digite o nome do estilista:');
		ReadLn(estilistas[auxiliar].nome);
		estilistas[auxiliar].codigo:=auxiliar;
		WriteLn('Digite o salário do estilista ',estilistas[auxiliar].nome, ' que possui o código ', estilistas[auxiliar].codigo, ' :');
		ReadLn(estilistas[auxiliar].salario);
	end;
	
	(* Agora serão castradas o código das estações do ano *)
	estacoes[1].nome:='Primavera-Verão';
	estacoes[1].codigo:=1;
	estacoes[2].nome:='Outono-Inverno';
	estacoes[2].codigo:=2;
	
	
	(*==========================*)
	(*Inicialização da estrutura*)
	(*==========================*)
	for auxiliar:=1 to 20 do
	begin
		roupas[auxiliar].codigo:=0;
	end;
	auxiliar:=1;
	roupas_primavera:=0;
	roupas_outono:=0;
	
	(*Agora iremos realizar o cadastro das roupas.*)
	WriteLn('Serão cadastradas as roupas: (Limite de 10 roupas por estação)');
	
	while auxiliar <= 20 do
	begin
		WriteLn('Cadastro de nova peça: ');
		WriteLn('Digite o cógigo da estação:');
		WriteLn('1. Primavera-Verão');
		WriteLn('2. Outono-Inverno'); 
		ReadLn(auxiliar_cadastro);
		(* Verifica se valor digitado é de alguma estação cadastrada *)
		(* Verifica também se não ultrapassou o limite para cadastro de roupas de determinada estação *)
		if(((auxiliar_cadastro = 1) and (roupas_primavera < 10)) or ((auxiliar_cadastro = 2) and (roupas_outono < 10))) then
		begin
		
			roupas[auxiliar].estacao:=auxiliar_cadastro;
			
			WriteLn('Digite o código do estilista quem desenhou a roupa:');
			ReadLn(auxiliar_cadastro);
			(* Verifica se valor digitado é de algum estilista cadastrado *)
			if((auxiliar_cadastro = estilistas[1].codigo) or (auxiliar_cadastro = estilistas[2].codigo) or (auxiliar_cadastro = estilistas[3].codigo)) then
			begin
			
				roupas[auxiliar].estilista:=auxiliar_cadastro;
				
				if(roupas[auxiliar].estacao=estacoes[1].codigo) then
				begin
					roupas_primavera:=roupas_primavera+1;
				end
				else
					roupas_outono:=roupas_outono+1;
					
				(*Realiza o cadastro das informações sobre a roupa. *)
				roupas[auxiliar].codigo:=auxiliar;
				WriteLn('Digite a descrição da roupa:');
				ReadLn(roupas[auxiliar].descricao);
				WriteLn('Digite o ano de criação da roupa:');
				ReadLn(roupas[auxiliar].ano);
				auxiliar:=auxiliar+1;
			
			end
			else (*Caso valor não existe *)
				WriteLn('Valor digitado não corresponde a nenhum estilista cadastrado. Roupa não cadastrada.');
		end
		else (*Caso valor não existe *)
			WriteLn('Valor digitado não corresponde a nenhuma estação cadastrada ou ultrapassou o limite para estação digitada. Roupa não cadastrada.');
	end;
	
	(*Será exibido todas as roupas de determinada estação que foram cadastradas: *)
	WriteLn('Agora será exibida as roupas da estação selecionada:');
	WriteLn('1. Primavera-Verão');
	WriteLn('2. Outono-Inverno');
	ReadLn(auxiliar_consulta);
	for auxiliar:=1 to 20 do
	begin
		if(roupas[auxiliar].estacao = auxiliar_consulta) then
		begin
			WriteLn('--------------------------------------------');
			WriteLn('Código da roupa: ', roupas[auxiliar].codigo);
			WriteLn('Estilista criador: ', estilistas[roupas[auxiliar].estilista].nome);
			WriteLn('Ano de criação: ', roupas[auxiliar].ano);
			WriteLn('Descrição da roupa: ', roupas[auxiliar].descricao);
		end;
	end;	
	WriteLn('--------------------------------------------');
	Halt(0);
end.

(*==========================================================================*)
