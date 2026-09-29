	.globl	foo
	.csect	foo[PR]
foo:
	ba	target
	nop
target:
	nop
