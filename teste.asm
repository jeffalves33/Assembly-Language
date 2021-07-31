.macro fim #inicio do macro que encerra o programa.
	li $v0, 10 #atribuindo o serviço para o fim do programa.
	syscall #executa a instrução.
.end_macro #fim da macro.