{**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um n�mero x elevado a um n�mero y    ****/
/**** inteiro positivo.                    ****/
/**********************************************}

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****/
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
	if(y>0) then{ Verifica se y � positivo. }
	begin
		resultado:=1;
		for n:=1 to y do (* La�o para elevar o n�mero. *)
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