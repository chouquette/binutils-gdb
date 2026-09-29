	.globl	realdata
	.csect	.data[RW]
realdata:
	.llong	1
	.globl	realdata2
realdata2:
	.llong	2

	.toc
	.tc	narrowentry[TC],realdata
	.tc	wideentry[TE],realdata2

	.globl	foo
	.globl	.foo
	.csect	foo[DS],3
foo:
	.llong	.foo, TOC[tc0], 0

	.csect	.text[PR]
.foo:
	ld	9,narrowentry[TC](2)
	addis	10,wideentry[TE]@u(2)
	la	10,wideentry[TE]@l(10)
	blr
