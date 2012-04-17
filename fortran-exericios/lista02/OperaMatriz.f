(*******************************************************************************)
(**** Autor: Aron Daniel Lopes												****)
(**** Data: 06/05/2011														****)
(**** Este programa preenche uma matrix 5x5 com valores e realiza diversas  ****)
(**** operações de soma e exibição de linhas, colunas, diagonais e a matriz ****)
(**** inteira.																****)
(*******************************************************************************)

Program OperaMatriz;

(*--------------------------------------------*)

type
	matriz = Array[1..5] of Array[1..5] of Integer;
	
(*--------------------------------------------*)

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

var
	matriz_: Matriz;
	linha, coluna: Integer;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

(*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*)
(*&&&& Trecho de funções e procedimentos do programa &&&&*)
(*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*)


(* Esta função retorna a soma de determinada linha *)
Function RetornaSomaLinha(linha: Integer): Integer;

var
	soma: Integer;
	
begin
	soma:=0;
	for coluna:=1 to 5 do
	begin
		soma:=soma + matriz_[linha][coluna];
	end;
	RetornaSomaLinha:=soma;
end;



(* Esta função retorna a soma de determinada coluna *)
Function RetornaSomaColuna(coluna: Integer): Integer;

var
	soma: Integer;
	
begin
	soma:=0;
	for linha:=1 to 5 do
	begin
		soma:=soma + matriz_[linha][coluna];
	end;
	RetornaSomaColuna:=soma;
end;



(* Esta função retorna a soma da diagonal principal *)
Function RetornaSomaDiagonalP(): Integer;

var
	soma: Integer;
	
begin
	soma:=0;
	for linha:=1 to 5 do
	begin
		coluna:=linha;
		soma:=soma + matriz_[linha][coluna];
	end;
	RetornaSomaDiagonalP:=soma;
end;



(* Esta função retorna a soma da diagonal secundária *)
Function RetornaSomaDiagonalS(): Integer;

var
	soma: Integer;
	
begin
	soma:=0;
	coluna:=5;
	for linha:=1 to 5 do
	begin
		soma:=soma + matriz_[linha][coluna];
		coluna:=coluna-1;
	end;
	RetornaSomaDiagonalS:=soma;
end;

(* Esta função retorna a soma de uma matriz*)
Function RetornaSomaMatriz(): Integer;

var
	soma: Integer;
	
begin
	soma:=0;
	for linha:=1 to 5 do
	begin
		for coluna:=1 to 5 do
		begin
			soma:=soma + matriz_[linha][coluna];
		end;
	end;
	RetornaSomaMatriz:=soma;
end;

(*========================================================================*)
(* =======================  Escopo principal =============================*)
(*========================================================================*)

begin

	WriteLn('Este programa realiza diversas operações com uma matriz.');
	
	(* O for abaixo le os elementos e os insere na matriz. *)
	for linha:=1 to 5 do
	begin
		for coluna:=1 to 5 do
		begin
			WriteLn('Digite o valor que irá compor o elemento da linha ', linha ,' e coluna ', coluna, ' :');
			ReadLn(matriz_[linha][coluna]);
		end;
	end;
	
	(* For abaixo imprime a matriz digitada. *)
	WriteLn('A matriz digitada:');
	for linha:=1 to 5 do
	begin
		for coluna:=1 to 5 do
		begin
			Write(matriz_[linha][coluna], '     ');
		end;
		WriteLn();
	end;
	
	WriteLn('A soma da quarta linha: ', RetornaSomaLinha(4)); 
	WriteLn('A soma da segunda coluna: ', RetornaSomaColuna(2)); 
	WriteLn('A soma da diagonal principal: ', RetornaSomaDiagonalP()); 
	WriteLn('A soma da diagonal secundária: ', RetornaSomaDiagonalS()); 
	WriteLn('A soma de todos os elementos da matriz: ', RetornaSomaMatriz()); 
	
end.

(*========================================================================*)