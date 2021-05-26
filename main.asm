.text
jal	ReadInput
lb	$a0, input
jal	IsDigit
li	$v0, 10	# terminate program run and
syscall		# Exit 
.include "Funct.asm"
