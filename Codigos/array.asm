.data
	Array:
		.align 2
		.space 16 #aloca 4 espacos (4bytesx4pos = 16)
.text
	move $t0, $zero #indice do array
	move $t1, $zero #valor inserido no array
	li $t2, 16
	
	loop:
		beq $t0, $t2, saidoLoop
		sw $t1, Array($t0)
		addi $t0, $t0, 4 #soma de 4 em 4 posicoes
		addi $t1, $t1, 1
		j loop
	saidoLoop:
		move $t0, $zero
		imprime:
			beq $t0, $t2, saidaImpressao
			li $v0, 1
			lw $a0, Array($t0)
			syscall
			addi $t0, $t0, 4
			j imprime
		saidaImpressao:
		
			li $v0, 10
			syscall