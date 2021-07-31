.text
main:
li $s0, 100       #insere 100 no registrador $s0
li $s1, 30        #insere 30 no registrador $s1
sub $s2, $s0, $s1 #=> $s2 = $s0 - $s1

la $a0, ($s2)     #coloca o registrador $s2 para ser impresso
li $v0, 1         #comando de impressão de inteiro na tela
syscall           #efetua a chamada ao sistema

li $v0, 10        #comando de exit
syscall           #efetua a chamada ao sistema