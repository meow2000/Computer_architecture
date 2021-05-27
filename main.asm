.text
jal	ReadInput
jal	In2Post
li	$v0, 10	# terminate program run and
syscall		# Exit 
.include "Funct.asm"
