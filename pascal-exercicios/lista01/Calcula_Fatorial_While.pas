{***********************************************************************************************************/
/**** Este programa calcula a função fatorial de um número inteiro positivo utilizando um laço 'while'. ****/
/***********************************************************************************************************}

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
/**** Data: 12/04/2011			                            ****/
/***************************************************************}

Program Calcula_Fatorial_While;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

var
	n, resultado: Integer;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

(*===============================================================================*)

begin
	WriteLn('Este programa calcula a funcao fatorial de um numero inteiro positivo.');
	WriteLn('Digite o numero que deseja calcula o fatorial:');
	ReadLn(n);
	if(n>=0) then (* Verifica se o número passado é positivo. *) 
	begin
		resultado:=1;
		while(n>0) do
		begin
			resultado:=resultado*n;
			n:=n-1;
		end;
		WriteLn('Resultado: ', resultado);
	end
	else
	begin
		WriteLn('Numero digitado invalido.');
	end;
	Halt(0);
end.

(*===============================================================================*)