.data
	pergunta: .asciiz "Qual é o seu nome?"
	saudacao: .asciiz "Olá, "
	nome: .space 25

.text	#impressao de string
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura da string
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	li $v0, 4
	la $a0, saudacao
	syscall
	
	li $v0, 4
	la $a0, nome
	syscall
	