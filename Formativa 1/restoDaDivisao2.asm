.text
main:
	# Ler n
	li $v0, 5          
	syscall
	move $t1, $v0      
	
	# Ler i
	li $v0, 5          
	syscall
	move $t2, $v0      
	
	# Calcular 2^i usando multiplicação repetida (loop)
	li $t0, 1          # (base para 2^i)
	li $t3, 0          # Contador 0
	
power_loop:
	beq $t3, $t2, end_power  
	sll $t0, $t0, 1
	addi $t3, $t3, 1    
	j power_loop    

end_power:
	
	div $t1, $t0
	mfhi $s0   
	
	
	li $v0, 1  
	move $a0, $s0 
	syscall
	
	li $v0, 10 
	syscall
