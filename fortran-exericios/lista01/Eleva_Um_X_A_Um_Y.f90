!**********************************************!
!**** Este programa calcula o resultado de ****!
!**** um número x elevado a um número y    ****!
!**** inteiro .                            ****!
!**********************************************!

!***************************************************************!
!**** Autor: Aron Daniel Lopes e Marco Aurélio Dilda Campos ****!
!**** Data: 12/04/2011			                            ****!
!***************************************************************!

program ex1

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

implicit none

real resultado
integer x,y,i

!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%!!

print *,"escreva um valor para x:"
read *,x

print *,"escreva um valor para y:"
read *,y

resultado = x

if (y .lt. 0) then
	do i = y, -1, 1
		resultado = resultado * x
	enddo
	resultado = 1/resultado
endif

if (y .eq. 0) then
	resultado = 0;
endif

if (y .gt. 0) then
	do i = 1, (y-1), 1
		resultado = resultado * x
	enddo
endif

print *,"o resultado:", resultado

end program ex1