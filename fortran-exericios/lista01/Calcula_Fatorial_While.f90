!**********************************************!
!**** Este programa calcula o resultado do ****!
!**** fatorial de um numero inteiro n      ****!
!**** fazendo um laço while.               ****!
!**********************************************!

!***************************************************************!
!**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****!
!**** Data: 12/04/2011			                            ****!
!***************************************************************!

program ex21

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

implicit none

integer n,i,fatorial

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

print *,"digite um numero para calcular o fatorial:"
read *,n

i = 0
fatorial = 1

if (n .ne. 0) then
	do while (i .le. n) 
		fatorial = fatorial * (n-i)
	end do
end if

print *,"o fatorial é: ",fatorial

end program ex21