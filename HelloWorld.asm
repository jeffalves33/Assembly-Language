.data #Diretiva usada para declarar as vari�veis e constantes.
msg: .asciiz "Hello World!"
.text #Diretiva usada para conter o c�digo em si.
	li $v0, 4 #Imprime uma string. li: carrega imediatamente em v0.
	la $a0, msg #la: carrega o endere�o "msg" no a0. Usado para passagem de par�metros
	syscall
li $v0, 10 #Prepara para encerrar o programa
syscall