.text
main:
li $s0, 50        #insere 50 no registrador $s0
li $s1, 10        #insere 30 no registrador $s1
mul $s2, $s0, $s1 #=> $s2 = $s0 * $s1

la $a0, ($s2) #coloca o registrador $s2 para ser impresso
li $v0, 1     #comando de impress�o de inteiro na tela
syscall       #efetua a chamada ao sistema

li $v0, 10 #comando de exit
syscall    #efetua a chamada ao sistema