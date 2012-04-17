{**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um n�mero x elevado a um n�mero y    ****/
/**** inteiro .                            ****/
/**********************************************}

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
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
	if (y<0) then (* Verifica se y � negativo. *)
	begin
		for n:=1 to (-1*y) do (* La�o para elevar o n�mero. *)
		begin
			resultado:=resultado*x;
		end;
		resultado:=1/resultado; (* Transforma o n�mero em fra��o(pois o expoente � negativo *)
		WriteLn('Resultado: ', resultado:0:4);
	end
	else
	begin
		if(y>0) then(*Se y � positivo. *)
		begin
			for n:=1 to y do(* La�o para elevar o n�mero. *)
			begin
				resultado:=resultado*x;
			end;
			WriteLn('Resultado: ', resultado:0:4);
		end
		else (* Se y � zero. *)
		begin
			WriteLn('Resultado: 1');
		end;
	end;
	Halt(0);
end.

{/===================================================================/}