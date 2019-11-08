.data
.align 2
 name: .asciiz "Md Abul Kashem \n"
 newline: .asciiz "\n"
 sake: .word 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, -1, -1 
 size: .word 10
 kyinput: .space 4
 .text
  main:     
  
  #problem 1 start
  li $v0, 4
  la $a0, name
  syscall 
  
  # problem 2
  li $v0, 5  # enter interger
  syscall
  addi $t2, $v0, 0
  sw $t2, kyinput
  lw $t3, size  # size
   
   addi $t0, $0, 0 # counter
   la $s0, sake
   
   loop: 
   
       lw $s1, 0($s0)
       addi $t0, $t0, 1
	   #li $v0, 1
	   #addi $a0, $s1, 0
	   #syscall
	   
	   #
	   bgt $s1, $t2, printItem
	   li $v0, 1
	   addi $a0, $s1, 0
	   syscall
	   #
	   beq $t0, $t3, exit
	   
	   addi $s0, $s0, 4
	   
	   #blt $t0, $t3, 
	   j loop
	   
	   #problem 2 end 
	   #problem 3 start
	   addi $t4, $0, 0 # index i =0
	   la $t5,  sake # array adreess
	   
	   
	   loop2:
	        lw $s3, 0($t5)  # sake [i]
			lw $s4, 4($t5)  # sake [i+1]
			
			addi $sp, $sp, -4
			sw $s3, 0($sp)
			addi $sp, $sp, -4
			sw $s4, 0($sp)
			 jal function
			 
			addi $sp, $sp, 8 
			add $a0, $0, $v0
			li $v0, 1
			syscall
			
			  addi $t4, $t4, 1
	         addi $t5, $t5, 4
	        blt $t4, $t3, loop2
	   
	   
	   
	   
  
  
  
  #--------------
  # exit from main
  li $v0, 10
  syscall
  
  # end  main
  
	
printItem:
     	li $v0, 1
	   addi $a0, $s1, 0
	   syscall
	  # addi $sp, $sp, -4
	   #sw $ra, 0($sp)
	   #addi $sp, $sp, -4
	   #sw $s1, 0($sp)
	   #jal printArray
	   #addi $sp, $sp, 4
	   #lw $ra, 0($sp)
      #jr $ra

printArray: 
         addi $sp, $sp, -4
          lw $s0, 4($sp)
		  sw $s0, 0($sp)
		  lw $a0, 0($sp)
		  li $v0, 1
		  syscall
		  addi $sp, $sp, 4
		  
		  #print newline
		  li $v0, 4
		  la $a0, newline
		  syscall
		  jr $ra
		  
# problem 4 

function: 
        
		# load
		lw $s3 4($sp)
		lw $s4, 0($sp)
		# load
		addi $sp, $sp, -4
		sw $s3, 0($sp)
		addi $sp, $sp, -4
		sw $s4, 0($sp)
		lw $s3 4($sp)
		lw $s4, 0($sp)
		
		sub $s5, $s4, $s3
		move $v0, $s5
		
		jr $ra
		
		
		exit: 
    jr $ra
		
		
		
		
		
		
		
		
		
		
          		  
     