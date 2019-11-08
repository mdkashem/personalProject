.data
     newLine: .asciiz "\n"
	 n_element: .word 8
    array: .word 3, 5, 21, 7, 3, 4, 5, 8
 


.text
main:

	# clear $t0 to 0
    addi $t2, $zero, 0
	while:
			beq $t2, 32, exit
            lw $s2, array($t2)
			addi $sp, $sp, -4
			sw $s2, 0($sp)
			jal func
			addi $sp,$sp 4
            addi $t2, $t2, 4
	
	j while

	exit:
       # Tell system this is end of the program
        li $v0, 10
        syscall 



	func:
		 addi $sp, $sp, -4    # 4(sp) parameter
		 lw $t0, 4($sp)         # 4(sp) -> 0(sp) num
		 sw $t0, 0($sp)         #  param => num
		 lw $t0, 0($sp)
		 andi $s1, $t0, 1
		 beq $s1, 0, even
		 addi $sp, $sp, -4
		 sw $ra, 0($sp)
		 addi $sp, $sp, -4
		 sw $t0, 0($sp)

   		 jal printArray
		 addi $sp, $sp, 4
		lw $ra, 0($sp);
        addi $sp,$sp, 4
	    
	even:
		# going to main 
		addi $sp,$sp, 4
		jr $ra

	printArray:
         
	        addi $sp, $sp, -4
			lw $t0, 4($sp);
            sw $t0, 0($sp)
            lw $a0, 0($sp)
			li $v0, 1
            syscall
	
			addi $sp, $sp, 4
   # print a new line
           li $v0, 4
           la $a0, newLine
           syscall
         jr $ra
