.data
input: .space 100 # Buffer 100 byte chua chuoi ki tu can 
.text
ReadInput: # read infix
# TO DO
 li 	$v0, 8
 la 	$a0, input
 li 	$a1, 100
 syscall 
 la 	$k0, input
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
lb	$a0, 0($k0)
beq	$a0, '\n',Calculate
nop
blt 	$a0, 48, no
nop
addi	$t1, $zero, 48	# $t1 = '0'
loop:
addi	$t2, $zero, 57	# $t2 = '9'
addi	$t0, $a0, 0	# $t0 = $a0
sub	$t0, $t0, $t1	# 
beqz	$t0, yes
addi	$t1, $t1, 1	# $t1 += 1
sub	$t2, $t2, $t1	# $t2 -= $t1
j	loop
no:
addi	$k0, $k0, 1
addi	$a1, $zero, 0	# no
j	IsDigit
yes:
addi	$k0, $k0, 1
addi	$a0, $t1, -48	# $a0 = (int) token
addi	$a1, $zero, 1	# yes 
j	IsDigit

GetPrio: # get priority and save in $a0
# TO DO
addi	$t0, $zero, 43 
In2post: # convert from inFix[] to postFix[]
# TO DO

Calculate: # calculate 
# TO DO

