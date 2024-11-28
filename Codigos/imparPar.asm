.data
	msg: .asciiz "Forneça um número: "
	par: .asciiz "O número é par"
	impar: .asciiz "O número é ímpar"
.text	#imprimir a msg
	li $v0, 4
	la $a0, msg
	syscall
	#ler o número
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #possui o resto da divisão por 2
	
	beq $t1, $zero, imprimePar
	li $v0, 4
	la $a0, impar
	syscall
	
	#encerrar o programa
	li $v0, 10
	syscall
	
	imprimePar:
		li $v0, 4
		la $a0, par
		syscall
	