.data
	msg: .asciiz "Forneça um número decimal: "
	zero: .float 0.0
.text	#imprimindo uma mensagem
	li $v0,4
	la $a0, msg
	syscall
	
	#lendo um número
	li $v0, 6
	syscall #valor lido estára em $f0
	
	lwc1 $f1, zero
	add.s $f12,$f1, $f0
	
	#imprimindo um numero
	li $v0, 2
	syscall