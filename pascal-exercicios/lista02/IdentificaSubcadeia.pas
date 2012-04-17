(*******************************************************************)
(**** Autor: Aron Daniel Lopes									****)
(**** Data: 07/05/2011											****)
(**** Este programa busca por subcadeias de caracter dentre de 	****)
(**** cadeias maiores.											****)
(*******************************************************************)

Program IdentificaSubcadeia;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

var
	frase, subcadeia: String;
	achou, indice_letra, percorre_frase, percorre_subcadeia : Integer;

(*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*)

(*==================================================================*)

begin
	WriteLn('Este programa procura uma subcadeia de caracteres dentro de uma cadeia:');
	
	WriteLn('Digite uma frase:');
	ReadLn(frase);
	
	WriteLn('Digite a subcadeia desejada:');
	ReadLn(subcadeia);
	
	achou:= 0;
	
	//Verifica se o tamanho da frase digitada é menor que o da subcadeia.
	if( length(frase) >= length(subcadeia)) then
	begin
		
		//For que percorre toda a frase, letra por letra até onde é possível
		// ainda encontrar uma subcadeia completa dentro da frase.
		for indice_letra:=1 to (length(frase)-length(subcadeia)+1) do
		begin
		
			//Compara letras.
			if(frase[indice_letra] = subcadeia[1]) then
			begin
			
				percorre_frase:=indice_letra;
				percorre_subcadeia:=1;
				
				//Enquanto as letras comparadas forem iguais faça.
				while((percorre_subcadeia <= length(subcadeia)) and (frase[percorre_frase] = subcadeia[percorre_subcadeia])) do
				begin
					percorre_frase:=percorre_frase+1;
					percorre_subcadeia:=percorre_subcadeia+1;
				end;
				
				//Verifica se subcadeia foi percorrida até a ultima letra.
				if(percorre_subcadeia-1 = length(subcadeia)) then
				begin
					achou:=achou+1;
				end;
			end;
		end;
		
		WriteLn('Foram encontrada: ', achou, ' subcadeias dentro da frase.');
		Halt(0);
	end
	else //Caso tenha sido digitado uma subcadeia maior que a frase.
		WriteLn('Subcadeia digitada é maior que frase digitada.'); 
		Halt(1);
end.

(*==================================================================*)