!**********************************************!
!**** Este programa executa a estrutura    ****!
!**** dada usando um la�o while... do.     ****!
!**********************************************!

!***************************************************************!
!**** Autor: Aron Daniel Lopes e Marco Aur�lio Dilda Campos ****!
!**** Data: 12/04/2011			                            ****!
!***************************************************************!

program ex31

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

implicit none

integer n,i

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

print *,"digite um valor para n:"
read *,n

i = 0

while i < n do
	if ( modulo(i,2) == 0)
		print *,"i � par! (",i,")"
	else
		print *,"i � impar! (",i,")"
	endif
enddo

end program ex31