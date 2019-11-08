.data
     newLine: .asciiz "\n"
.text
     main:
				addi $s0, $zero, 53
               addi $s1, $zero, 15
		       addi $sp, $sp, -8
                 sw $s0, 0($sp)
                 sw $s1, 4($sp)
         
         jal sbstract
		  lw $s0, 0($sp)
                 lw $s1, 4($sp)
                 addi $sp, $sp, 8
         
         # This line is going to signal end of program
         li $v0, 10
         syscall
      
         sbstract:
                 addi $sp, $sp, -8
                 sw $s0, 0($sp)
                 sw $s1, 4($sp)
                 sub $s0, $s0, $s1
                 #print value
                 li $v0, 1
                 move $a0, $s0
                 syscall
                 
                 lw $s0, 0($sp)
                 lw $s1, 4($sp)
                 addi $sp, $sp, 8
                 
                 jr $ra
