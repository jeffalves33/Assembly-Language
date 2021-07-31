.data
msg1: .asciiz "Digite o primeiro numero: "
msg2: .asciiz "Digite o segundo numero: "
result: .asciiz "O resultado da multiplicação é: "

.text

#imprime msg1
li $v0, 4       #prepara para imprime uma string
la $a0, msg1    #coloca a string em $a0
syscall         #imprime a string na tela

#captura o primeiro numero e move para $s0
li $v0, 5    	#prepara para ler um inteiro
syscall      	#executa a instrução
move $s0, $v0   #movendo de $v0 para $s0

#imprime $msg2
li $v0, 4       #prepara para imprime uma string
la $a0, msg2    #coloca a string em $a0
syscall         #imprime a string na tela

#captura o segundo numero e move para $s1
li $v0, 5       #prepara para ler um inteiro
syscall         #executa a instrução
move $s1, $v0   #movendo de $v0 para $s1

#multiplica $s0 e $s1 e salva em $s2
mul $s2, $s1, $s0 #=>$s2 = $s1 * $s0

#imprime result
li $v0, 4         #prepara para imprime uma string
la $a0, result    #coloca a string em $a0
syscall           #imprime a string na tela

#imprime o resultado da multiplicação
li $v0, 1        #prepara para imprime uma string
la $a0, ($s2)    #coloca a string em $a0
syscall          #imprime a string na tela

#encerra o programa
li $v0, 10      #prepara para encerrar
syscall    	#encerra o programa