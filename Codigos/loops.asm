.data
	separador: .asciiz " "
	msg: .asciiz "Escreva um número: "

.text
	li $v0, 4
	la $a0, msg
	syscall
	#lendo inteiro
	li $v0, 5
	syscall
	move $t0, $v0 #copiando o inteiro para $t0
	
	move $t1,$zero #criando $t1 zerado
	
	while:
		bgt $t1, $t0, saida #compara se o número é maior que o N
		li $v0, 1 #imprimindo inteiro
		move $a0, $t1 
		syscall
		li $v0, 4
		la $a0, separador #imprime o separador
		syscall
		
		addi $t1, $t1, 1
		j while
	saida:
		li $v0, 10 #finaliza o programa
		syscall
