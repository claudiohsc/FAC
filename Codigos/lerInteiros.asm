.data
	saudacao: .asciiz "Olá, por favor, forneça a sua idade: "
	saida: .asciiz "Sua idade é: "
.text
	li $v0, 4 #imprimir uma string
	la $a0, saudacao
	syscall
	
	li $v0, 5 #leitura de inteiro
	syscall
	move $t0, $v0 #copiando o valor da idade para não perder
	
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 1 #imprimir um inteiro
	move $a0, $t0
	syscall
	
	
	