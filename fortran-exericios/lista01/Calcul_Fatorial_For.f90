!**********************************************!
!**** Este programa calcula o resultado do ****!
!**** fatorial de um numero inteiro n      ****!
!**** fazendo um laço for.                 ****!
!**********************************************!

!***************************************************************!
!**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****!
!**** Data: 12/04/2011			                            ****!
!***************************************************************!

program ex22

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

implicit none

integer n,i,fatorial

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

print *,"digite um numero para calcular o fatorial:"
read *,n

fatorial = 1

if (n .ne. 0) then
	do i = 0, n, 1
		fatorial = fatorial * (n-i)
	enddo
endif

print *,"o fatorial é: ",fatorial

end program ex22