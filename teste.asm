.macro fim #inicio do macro que encerra o programa.
	li $v0, 10 #atribuindo o servi�o para o fim do programa.
	syscall #executa a instru��o.
.end_macro #fim da macro.