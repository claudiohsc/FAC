.data
	msg: .asciiz "Forne�a um n�mero: "
	par: .asciiz "O n�mero � par"
	impar: .asciiz "O n�mero � �mpar"
.text	#imprimir a msg
	li $v0, 4
	la $a0, msg
	syscall
	#ler o n�mero
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1 #possui o resto da divis�o por 2
	
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
	