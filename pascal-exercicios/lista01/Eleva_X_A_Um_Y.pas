{**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um número x elevado a um número y    ****/
/**** inteiro .                            ****/
/**********************************************}

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
/**** Data: 12/04/2011			                            ****/
/***************************************************************}

Program Eleva_X_A_Um_Y;

{/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/}

var

	y, n: Integer;
	x, resultado: Real;

{/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/}

{/===================================================================/}

begin
	WriteLn('Este programa calcula o valor de um numero x elevado a um numero y inteiro.');
	WriteLn('Digite o numero x: ');
	ReadLn(x);
	WriteLn('Digite o numero y: ');
	ReadLn(y);
	resultado:=1;
	if (y<0) then (* Verifica se y é negativo. *)
	begin
		for n:=1 to (-1*y) do (* Laço para elevar o número. *)
		begin
			resultado:=resultado*x;
		end;
		resultado:=1/resultado; (* Transforma o número em fração(pois o expoente é negativo *)
		WriteLn('Resultado: ', resultado:0:4);
	end
	else
	begin
		if(y>0) then(*Se y é positivo. *)
		begin
			for n:=1 to y do(* Laço para elevar o número. *)
			begin
				resultado:=resultado*x;
			end;
			WriteLn('Resultado: ', resultado:0:4);
		end
		else (* Se y é zero. *)
		begin
			WriteLn('Resultado: 1');
		end;
	end;
	Halt(0);
end.

{/===================================================================/}