.text
	li $t0, 4
	li $t1, 10
	
	sll $t3, $t1, 10 #multiplicar por 2^10 = 1024
	
	mul $s0, $t0, $t1
	
	li $v0, 1 #imprimir um inteiro em $a0
	move $a0, $s0 #movendo a saida da mult para $a0
	syscall