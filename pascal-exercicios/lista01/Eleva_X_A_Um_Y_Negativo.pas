{**********************************************/
/**** Este programa calcula o resultado de ****/
/**** um número x elevado a um número y    ****/
/**** negativo inteiro                     ****/
/**********************************************}

{***************************************************************/
/**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****/
/**** Data: 12/04/2011			                            ****/
/***************************************************************}

Program Eleva_X_A_Um_Y_Negativo;

{/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/}

var
	y, n: integer;
	x, resultado: Real;

{/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/}

{/===================================================================/}

begin
	WriteLn('Este programa calcula o valor de um numero x elevado a um numero y inteiro negativo.');
	WriteLn('Digite o numero x: ');
	ReadLn(x);
	WriteLn('Digite o numero y: ');
	ReadLn(y);
	if(x<>0) then(* /Verifica se x é diferente de zero. *)
	begin
		if(y<0) then (* Verifica se y é negativo. *)
		begin
			resultado:=1;
			for n:=1 to (-1*y) do (* Laço para elevar o número. *)
			begin
				resultado:=resultado*x;
			end;
			resultado:=1/resultado; (* Transforma o número em fração(pois o expoente é negativo). *)
			WriteLn('Resultado: ', resultado:0:4);
		end
		else
		begin
			WriteLn('Valor de y nao e negativo. Entrada invalida.'); 
		end;
	end
	else
	begin
		WriteLn('Valor de x e zero. Entrada invalida.');
	end;
	Halt(0);
end.

(* ===================================================================*)