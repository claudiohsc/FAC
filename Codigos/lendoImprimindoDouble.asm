.data	
	msg: .asciiz "Forne�a um n�mero decimal: "
	zero: .double 0.0
	
.text
	li $v0, 4 #imprimir string
	la $a0, msg
	syscall
	
	li $v0, 7
	syscall #valor decimal estar� em $f0 (e $f1)
	
	ldc1 $f2, zero
	add.d $f12,$f2,$f0
	
	#imprimir o n�mero
	li $v0, 3
	syscall