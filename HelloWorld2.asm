.data
msg: .asciiz "Hello World!2"
.text
.globl principal

principal:
	li $v0, 4   #imprime uma string.
	la $a0, msg #Recebe a vari�vel "msg" no registrador de endere�os $a0.
	syscall     #Exeuta a instru��o.
li $v0, 10          #Prepara para finalizar o programa.
syscall             #Executa a instru��o.
