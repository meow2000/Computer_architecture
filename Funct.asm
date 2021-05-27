.data
input: .space 100 # Buffer 100 byte chua chuoi ki tu can 
.text
ReadInput: # read infix
# TO DO
 li 	$v0, 8
 la 	$a0, input
 li 	$a1, 100
 syscall 
 la 	$t0, input
 jr 	$ra
Push: # push in stack
# TO DO
sub	$sp, $sp, 4	# add $sp
sw	$a0, 0($sp)	# push
Pop: # output : $a0
# TO DO
lw	$s0, ($sp)	# pop from stack
addi	$sp, $sp, 4	# pop

IsDigit: # input : $a0
	 # output : $a0, $a1 
addi	$t1, $zero, 48	# $t1 = '0'
loop:
addi	$t2, $zero, 57	# $t2 = '9'
addi	$t0, $a0, 0	# $t0 = $a0
sub	$t0, $t0, $t1	# 
beqz	$t0, yes
addi	$t1, $t1, 1	# $t1 += 1
sub	$t2, $t2, $t1	# $t2 -= $t1
beqz	$t2, no
j	loop
no:
addi	$a1, $zero, 0	# no
jr	$ra
yes:
addi	$a0, $t1, -48	# $a0 = (int) token
addi	$a1, $zero, 1	# yes 
jr	$ra

GetPrio: # get priority and save in $a0
# TO DO
beq	$a0, 43, plus # if '+'
nop
beq	$a0, 45, subtract # if '-'
nop
beq	$a0, 42, time	# tf '*'
nop
beq	$a0, 47, divine	#if '/'
nop
beq	$a0, 37, modulos	#if '%'
nop
beq	$a0, 40, open_parent	#if '('
nop
li	$a0, 3	#if isdigit
jr	$ra
plus:
li	$a0, 1
jr 	$ra
subtract:
li	$a0, 1
jr 	$ra
time:
li	$a0, 2
jr 	$ra
divine:
li	$a0, 2
jr 	$ra
modulos:
li	$a0, 2
jr 	$ra
open_parent:
jr 	$ra
#addi	$t0, $zero, 43 
In2post: # convert from inFix[] to postFix[]
# TO DO

Calculate: # calculate 
# TO DO

