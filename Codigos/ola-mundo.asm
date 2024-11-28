.data
	#area para dados na memoria principal
	msg: .asciiz "Olá, mundo!" #mensagem a ser exibida para o usuario
	
.text
	#area para instrucoes do programa
	
	
	li $v0, 4 #instrucao para impressao de string
	la $a0, msg #indicar o endereço em que está a mensagem
	syscall #faca! imprima!
	