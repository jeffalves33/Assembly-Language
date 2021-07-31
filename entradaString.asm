.data
msg1: .asciiz "Digite seu nome: "
msg2: .asciiz "\nSeja bem-vindo: "
nome: .space 40 #.space reserva um espaço para armazenar um valor depois.

.text
li $v0, 4       #prepara para imprime uma string
la $a0, msg1    #coloca a string em $a0
syscall         #imprime a string na tela

li $v0, 8    	#prepara para ler uma string
la $a0, nome 	#input buffer
la $a1, 40   	#máximo de caracteres
syscall      	#executa a instrução

li $v0, 4       #prepara para imprime uma string
la $a0, msg2    #coloca a string em $a0
syscall         #imprime a string na tela

li $v0, 4       #prepara para imprime uma string
la $a0, nome    #coloca a string em $a0
syscall         #imprime a string na tela

li $v0, 10 	#prepara para encerrar o programa
syscall    	#encerra o programa