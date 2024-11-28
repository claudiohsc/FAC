.data
	msgUsr: .asciiz "Forneça um número: "
	par: .asciiz "O número é par!"
	impar: .asciiz "O número é ímpar!"
.text
.main:
	la $a0, msgUsr
	jal imprimeString
	jal lerInteiro
	#imprimindo msgUsr
	move $a0, $v0
	
	jal ehImpar
	beq $v0, $zero, imprimePar
	la $a0, impar
	jal imprimeString
	li $v0, 10
	syscall	
ehImpar:
	li $t0, 2
	div $a0, $t0
	
	mfhi $v0
	jr $ra

imprimePar:
	la $a0, par
	jal imprimeString
	li $v0, 10
	syscall

imprimeString:
	li $v0, 4
	syscall
	jr $ra
		
lerInteiro:
	li $v0, 5
	syscall
	jr $ra