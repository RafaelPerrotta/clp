!/***************************************************************************)
!(**** Autor: Aron Daniel Lopes											****)
!(**** Data: 15/05/2011													****)
!(**** Programa criado para a disciplina de Conceitos de Linguagem		****)
!(**** de programação													****)
!(**** Este programa cadastra estilistas de uma industria de				****)
!(**** confecção além de determinadas informações						****)
!(***************************************************************************/

!/*%%%%%%%%%%%%%%%%%%%%%*)
!(* Declaração de tipos *)
!(*%%%%%%%%%%%%%%%%%%%%%*/

       Implicit None

Type :: Estacao
	character(20) :: nome
	integer :: codigo
END TYPE Estacao

TYPE :: Estilista
	integer :: codigo
	character(50) :: nome
	real :: salario
END TYPE Estilista
	
TYPE :: Roupa
	integer :: codigo
	character(255) :: descricao
	integer :: estilista
	integer :: estacao
	integer :: ano
END TYPE Roupa


!/*==========================================================================*)
!(*=========================== Inicio do Programa ===========================*)
!(*==========================================================================*/

          program GerenciaIndustriaConfeccao

!/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

	integer :: auxiliar, auxiliar_cadastro, auxiliar_consulta
	integer :: roupas_primavera, roupas_outono
	Estilista dimension(3) :: estilistas
	Estacao dimension(2) :: estacoes
	Roupa dimension(20) :: roupas

!/*^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^*/

	Write(*,*) 'Este programa realiza o cadastro e consulta de diversos estilistas e roupas.'
	Write(*,*) 'Primeiro será realizado o cadastro dos 3 estilistas.'

	!//(* For abaixo realiza cadastro dos estilistas. *)
	do auxiliar=1, 3
		Write(*,*) 'Digite o nome do estilista:'
		Read(*,*) estilistas(auxiliar)%nome
		estilistas(auxiliar)%codigo=auxiliar
		Write(*,*)  'Digite o salário do estilista' , estilistas(auxiliar)%nome ' que possui o codigo :' estilistas(auxiliar)%codigo
		Read(*,*) estilistas(auxiliar)%salario
	enddo

	!//(* Agora serão castradas o código das estações do ano *)
	estacoes(1])%nome='Primavera-Verão'
	estacoes(1)%codigo=1
	estacoes(2)%nome='Outono-Inverno'
	estacoes(2)%codigo=2


	!/*==========================*)
	!(*Inicialização da estrutura*)
	!(*==========================*/
	do auxiliar=1, 20
		roupas(auxiliar)%codigo=0
	end do
	auxiliar=0
	roupas_primavera=0
	roupas_outono=0

	!//(*Agora iremos realizar o cadastro das roupas.*)
	Write(*,*) 'Serão cadastradas as roupas: (Limite de 10 roupas por estação)'
	
	do while(auxiliar.lt.20)
		Write(*,*) 'Cadastro de nova peça:'
		Write(*,*) 'Digite o cógigo da estação:'
		Write(*,*) '1. Primavera-Verão'
		Write(*,*) '2. Outono-Inverno'
		Read(*,*) auxiliar_cadastro
		!//(* Verifica se valor digitado é de alguma estação cadastrada *)
		!//(* Verifica também se não ultrapassou o limite para cadastro de roupas de determinada estação *)
		if(((auxiliar_cadastro.eq.1) .AND. (roupas_primavera.lt.10)) .OR. ((auxiliar_cadastro.eq.2) .AND. (roupas_outono.lt.10))) then
		
			roupas(auxiliar)%estacao=auxiliar_cadastro
		
			Write(*,*) 'Digite o código do estilista quem desenhou a roupa:');
			Read(*,*) auxiliar_cadastro
			!//(* Verifica se valor digitado é de algum estilista cadastrado *)
			if(auxiliar_cadastro == estilistas(0)%codigo .OR. auxiliar_cadastro == estilistas(1)%codigo .OR. auxiliar_cadastro == estilistas(2)%codigo)
			
				roupas(auxiliar)%estilista=auxiliar_cadastro
					
				if(roupas(auxiliar)%estacao==estacoes(0)%codigo) then
					roupas_primavera=roupas_primavera+1
				else
					roupas_outono=roupas_outono+1
				end if
				
				!//(*Realiza o cadastro das informações sobre a roupa. *)
				roupas(auxiliar)%codigo=auxiliar
				Write(*,*) 'Digite a descrição da roupa:'
				Read(*,*) roupas(auxiliar)%descricao
				Write(*,*) 'Digite o ano de criação da roupa:'
				Read(*,*) roupas(auxiliar)%ano
				auxiliar=auxiliar+1
		
			else !//(*Caso valor não existe *)
				Write(*,*) 'Valor digitado não corresponde a nenhum estilista cadastrado. Roupa não cadastrada.'
			end if
		else !//(*Caso valor não existe *)
				Write(*,*) 'Valor digitado não corresponde a nenhuma estação cadastrada ou ultrapassou o limite para estação digitada. Roupa não cadastrada.'
		end if
	enddo

	!//(*Será exibido todas as roupas de determinada estação que foram cadastradas: *)
	Write(*,*) 'Agora será exibida as roupas da estação selecionada:'
	Write(*,*) '1. Primavera-Verão'
	Write(*,*) '2. Outono-Inverno'
	Read(*,*) auxiliar_consulta
	do auxiliar=0,20
		if(roupas(auxiliar)%estacao == auxiliar_consulta) then
			Write(*,*) '--------------------------------------------'
			Write(*,*) 'Código da roupa: ', roupas(auxiliar)%codigo
			Write(*,*) 'Estilista criador: ', estilistas(roupas[auxiliar)%estilista].nome
			Write(*,*) 'Ano de criação: ', roupas(auxiliar)%ano
			Write(*,*) 'Descrição da roupa: ', roupas(auxiliar)%descricao
		end if
	enddo
	Write(*,*) '--------------------------------------------'

End Program GerenciaIndustriaConfeccao

!/*==========================================================================*/
