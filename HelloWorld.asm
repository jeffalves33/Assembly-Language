.data #Diretiva usada para declarar as variáveis e constantes.
msg: .asciiz "Hello World!"
.text #Diretiva usada para conter o código em si.
	li $v0, 4 #Imprime uma string. li: carrega imediatamente em v0.
	la $a0, msg #la: carrega o endereço "msg" no a0. Usado para passagem de parâmetros
	syscall
li $v0, 10 #Prepara para encerrar o programa
syscall