(*********************************************************************************************************)
(**** Este programa calcula a função fatorial de um número inteiro positivo utilizando um laço "for". ****)
(*********************************************************************************************************)

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
/**** Data: 12/04/2011			                            ****/
/***************************************************************}

Program Calcula_Fatorial_For;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)
var
   n, i, resultado: integer;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

(*===============================================================================*)

begin
	WriteLn('Este programa calcula a funcao fatorial de um numero inteiro positivo.');
	WriteLn('Digite o numero que deseja calcula o fatorial:');
	ReadLn(n);
	if(n>=0) then (*Verifica se o número passado é positivo. *)
	begin
		resultado:=1;
		for i:= 1 to n do
        begin
			resultado:=resultado*i;
		end;
		WriteLn('Resultado: ', resultado);
	end
	else
		WriteLn('Numero digitado invalido.');
end.

(*===============================================================================*) 