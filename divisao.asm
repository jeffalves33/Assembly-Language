.data
msg1: .asciiz "O resultado da divis�o �: "
msg2: .asciiz "\nO resto da divis�o �: "

.text
li $s0, 5    #insere 50 no registrador $s0
li $s1, 2    #insere 30 no registrador $s1
div $s0, $s1 #divis�o de $s0 por $s1
mflo $s3     #salva o resultado da divisao em $s3
mfhi $s4     #salva o resultado da divisao em $s4

li $v0, 4    #prepara para imprimir uma string
la $a0, msg1 #carrega ms1 em $a0
syscall      #efetua a chamada ao sistema

li $v0, 1     #preoara para imprimir um inteiro
la $a0, ($s3) #carrega o valor de $s3 em $a0
syscall       #efetua a chamada ao sistema

li $v0, 4    #prepara para imprimir uma string
la $a0, msg2 #carrega ms1 em $a0
syscall      #efetua a chamada ao sistema

li $v0, 1     #preoara para imprimir um inteiro
la $a0, ($s4) #carrega o valor de $s3 em $a0
syscall       #efetua a chamada ao sistema