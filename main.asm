.data
input: .space 100 # Buffer 100 byte chua chuoi ki tu can 
.text
ReadInput: # read infix
# TO DO
 li $v0, 8
 la $a0, input
 li $a1, 100
 syscall 
 la $t0, input
#.include "Funct.asm"
