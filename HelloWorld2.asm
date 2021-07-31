.data
msg: .asciiz "Hello World!2"
.text
.globl principal

principal:
	li $v0, 4   #imprime uma string.
	la $a0, msg #Recebe a variável "msg" no registrador de endereços $a0.
	syscall     #Exeuta a instrução.
li $v0, 10          #Prepara para finalizar o programa.
syscall             #Executa a instrução.
