# cscd260 Mid term 2014 fall
#
# Follow the direction CAREFULLY!
#
# Upload your file under LastnameFirstnameInitialE1 titile
# For example, kosuke Imamura, it will be "imamurakE1"
# Your filename be "imamurakE1.asm".
#
# Problem. Read VERY very Carefully
#
#  First Print your name, then 
#  Using the data below, take an integer (word) input n.
#  Copy nums[ i ] to dums[ j ], if nums[ i ] < n.
#
#  This is to be signed integer comparison!!!
#  Print copied numbers by going through the dums array.
#
# Here is high level code:
#
#  read a number from keyboard, -> n
#          j = 0;
#          for(i=0; i<nnum; i++)
#          { if( nums[i] < n )        // signed compare 
#             { dums[j] = nums[i];
#               j=j+1;
#             }
#          }
#
#          for(i=0; i<nnum; i++)
#           print dums[i];
#
#
# For instance if I type -5, then  
#   -9 -56 -56 -77 1 1 1 1 1 1 1 1 1
#  should be printed.
#
# Try first to print the smaller-than-n numbers to get partial points
# If this works, then try to copy them to dums[] for full points
#
# 


.data
myname .asciiz "Kosuke Imamura"

.align 2
nnum: .word 13       # number of integers in nums[] array below 
nums: .word -1, 4, -1, -9, -56, 78, 4, -9, -56, -77, 78, 98, 98
dums: .word 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1  



