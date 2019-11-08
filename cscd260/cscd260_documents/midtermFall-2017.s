#
#  In class programming Test
#
#  Problem 1. Print your name (10 point)
#
#    Call "print_string" subroutine to print your name.
#    The "print_string" is provided at the bottom.
#    Your name shall be allocated in the .data section.
#
#
#  Problem 2. Find the sum of array elements (20 points)
#
#    n <- read int;
#    sum = 0;
#    for(i=0; i<n; i++) sum = sum + array[i];
#    print sum; 
#
#
#  Problem 3. Write a subroutine that returns the bigger number of two (20 points)    
#    Label "bigger" is provided after the exit code. You should use the provided
#    space to write "bigger" subroutine. 
#
#    num = bigger(a, b); // parameter passing convention right to left. 
#    print num;
#
#    bigger(x, y)
#    { if (x > y) return (x);
#      else return (y);
#    }     
# 
#  The subroutines, "cr" and "wspace" are provided for your convenience.
#  They do cariage return and white space. So, output shall be easy to read.
#
#
#  CAREFUL INSTRUCTION!
#  1. Write your code only between 
#--------------------- BEGIN YOUR CODE ---------------------
#                           and
#--------------------- END YOUR CODE ---------------------

.data
your_name:   .asciiz "Here, write your name\n"

# BEGIN do not change below !!
.align 2
n_element: .word 20
array0:    .word 5,11,42,3,-4,-105,-6,89,9,10,33,-18,5,1,-7,9,3,5,2,9,0
array1:    .space 20
# END of do not change below !!

.text
.globl main

main:

#Problem 1. Study the print_string subroutine at the bottom and use it to 
# print your name, which is in the .data section. 
#
#--------------------- BEGIN YOUR CODE ---------------------


jal print_string


#--------------------- END YOUR CODE ---------------------

#Problem 2. Take a User INTEGER input n. 
# and add array0[0] to  array0[n-1].
#
# Assume we enter a smaller number than 20, so no error checking needed on input.
#--------------------- BEGIN YOUR CODE ---------------------




#--------------------- END YOUR CODE ---------------------
#
# Problem 3. Take two user input INTEGERs. Write a subroutine that returns 
# the bigger number of the two (20 points)    
#
#    num = bigger(a, b); // parameter passing convention right to left. 
#
#--------------------- BEGIN YOUR CODE ---------------------


 jal bigger


#--------------------- END YOUR CODE ---------------------

addi $v0, $0, 10   # Exit
syscall
#######################################



#######################################
#  bigger (subrouine to return bigger)
#######################################
#
#--------------------- BEGIN YOUR CODE ---------------------
bigger:

 

jr $ra
#--------------------- END YOUR CODE ---------------------
#  End of bigger
#----------------------------------------------


#---------------------------
# print_string 
#---------------------------
print_string: 
addi $sp, $sp, -8
sw   $a0, 4($sp)
sw   $v0, 0($sp)
lw   $a0, 8($sp)  
addi $v0, $0, 4 
syscall
lw   $a0, 4($sp)
lw   $v0, 0($sp)
addi $sp, $sp, 8
jr   $ra

#---------------------------
# print white a space 
# usage:  jal wspace 
#---------------------------
wspace: 
addi $sp, $sp, -8
sw   $a0, 4($sp)
sw   $v0, 0($sp)
addi $a0, $0, 0x20 
addi $v0, $0, 11
syscall
lw   $a0, 4($sp)
lw   $v0, 0($sp)
addi $sp, $sp, 8
jr   $ra

#---------------------------
# carriage return 
# usage:  jal cr
#--------------------------
cr: 
addi $sp, $sp, -8
sw   $a0, 4($sp)
sw   $v0, 0($sp)
addi $a0, $0, 0x0A 
addi $v0, $0, 11
syscall
lw   $a0, 4($sp)
lw   $v0, 0($sp)
addi $sp, $sp, 8
jr   $ra

