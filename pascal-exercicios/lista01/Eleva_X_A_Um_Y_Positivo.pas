{**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um número x elevado a um número y    ****/
/**** inteiro positivo.                    ****/
/**********************************************}

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
/**** Data: 12/04/2011			                            ****/
/***************************************************************}

Program Eleva_X_A_Um_Y_Positivo;

{/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/}

var
	y, n: Integer;
	x, resultado: Real;

{/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/}

{/===================================================================/}

begin
	WriteLn('Este programa calcula o valor de um numero x elevado a um numero y inteiro positivo.');
	WriteLn('Digite o numero x: ');
	ReadLn(x);
	WriteLn('Digite o numero y: ');
	ReadLn(y);
	if(y>0) then{ Verifica se y é positivo. }
	begin
		resultado:=1;
		for n:=1 to y do (* Laço para elevar o número. *)
		begin
			resultado=resultado*x;
		end;
		WriteLn('Resultado: ', resultado:0:4);
	end
	else
	begin
		WriteLn('Valor de y nao e positivo. Entrada invalida.'); 
	end;
	Halt(0);
end.

{/===================================================================/}