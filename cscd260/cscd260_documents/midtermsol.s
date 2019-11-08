# You know programmers spend too much time 
# in debugging the code.
# To minimize debugging time, simplify 
# the problem. In our test, just write 
# an empty loop first.
#
# Set counter = 0;
# Set limit = n;
# loop_top: 
# counter++; 
# if counter == limit goto done
# else goto loop_top
#
# So, 
#
#  addi $s4, $0, 0      # s4, loop count
#  la $s5, size         # s5 = address of size
#  lw $s3, 0($s5)       # load data from size 
# loop0:
#  addi $s4, $s4, 1     # counter++
#  beq $s3, $s4, done0
#  j loop0
# done0:
# 
# Do not add anything to this unless running correctly!
#
# Then, print all the array elements to  
# see if you can traverse through the array. 
#
#  addi $s4, $0, 0      # s4, loop count
#  la $s5, size
#  lw $s3, 0($s5)       # load size 
#  la $a1,imam   # THIS IS NEWLY ADDED LINE. 
#                # This is the address of imam[0]
#
#  loop0:
#    lw   $a0, 0($a1)
#    addi $v0, $0,1     # debug, go thru array imam
#    syscall
#  skip0:
#  addi $a1, $a1, 4     # advance the array index (pointer)
#  addi $s4, $s4, 1     # counter++
#  beq $s3, $s4, done0
#  j loop0

# Now, conditionally print.
# Everything you wrote above stays intact.
# if a0<=s0 print
#  bgt $a0, $s0, skip0
#

.data
.align 2
imam: .word  0, 0, 1, 1, 2, 2, 3, 3, 4, 4, -1, -1
size: .word 10
numn: .space 4
name: .asciiz "kosuke imamura"

.text
main:

la $a0, name         # problem 1
addi $v0, $0, 4
syscall

addi $v0, $0, 5      # problem 2
syscall
add $s0, $v0, $0     # store into $s0
la $a0, numn
sw $s0, 0($a0)       # store in numn

                     # problem 3

addi $s4, $0, 0      # s4, loop count
la $s5, size
lw $s3, 0($s5)       # load size 
la $a1,imam          # address of imam[0]

loop0:
  lw   $a0, 0($a1)
 # if a0<=s0  print
  bgt $a0, $s0, skip0
  addi $v0, $0,1     # debug, go thru array imam
  syscall
skip0:
addi $a1, $a1, 4     # next
addi $s4, $s4, 1     # counter++
beq $s3, $s4, done0
j loop0

done0:

					 # problem 4
addi $s4, $0, 0      # s4 loop count
la $s5, size
lw $s3, 0($s5)       # load size 
la $a1,imam          # address of imam[0]

loop1:
lw $t6, 0($a1)
lw $t7, 4($a1)
addi $sp, $sp, -8
sw $t7, 4($sp)
sw $t6, 0($sp)
jal function
addi $sp, $sp, 8

  addi $a0, $v0, 0
  addi $v0, $0,1     # debug, go thru array imam
  syscall

addi $a1, $a1, 4
addi $s4, $s4, 1
beq $s3, $s4, done1
j loop1

done1:

addi $v0, $0, 10
syscall

function:
addi $sp, $sp, -8  # param at 8(sp)
sw $a0, 4($sp)
sw $t0, 0($sp)
lw $t0, 8($sp)
lw $a0, 12($sp)

sub $v0, $a0, $t0
#sub $a0, $a0, $t0
#addi $v0, $0, 1 
#syscall


lw $a0, 4($sp)
lw $t0, 0($sp)

addi $sp, $sp, 8
jr $ra
