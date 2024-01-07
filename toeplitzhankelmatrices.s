	.file	"toeplitzhankelmatrices.f"
	.text
	.section	.rodata
.LC0:
	.string	"toeplitzhankelmatrices.f"
.LC1:
	.ascii	"Toeplitz-like Matrix:"
.LC2:
	.ascii	"(3I4)"
.LC3:
	.ascii	"Hankel-like Matrix:"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$624, %rsp
	movl	$1, -4(%rbp)
.L5:
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L20
	movl	$1, -8(%rbp)
.L4:
	cmpl	$3, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L21
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	subq	$4, %rdx
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	movl	%eax, -96(%rbp,%rdx,4)
	addl	$1, -8(%rbp)
	jmp	.L4
.L21:
	nop
	addl	$1, -4(%rbp)
	jmp	.L5
.L20:
	nop
	movl	$1, -4(%rbp)
.L9:
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L22
	movl	$1, -8(%rbp)
.L8:
	cmpl	$3, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L23
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$4, %rax
	leal	-1(%rcx), %edx
	movl	%edx, -48(%rbp,%rax,4)
	addl	$1, -8(%rbp)
	jmp	.L8
.L23:
	nop
	addl	$1, -4(%rbp)
	jmp	.L9
.L22:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$21, -608(%rbp)
	movl	$128, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-624(%rbp), %rax
	movl	$21, %edx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L14:
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L24
	leaq	.LC0(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$23, -608(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	$5, -536(%rbp)
	movl	$4096, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -8(%rbp)
.L13:
	movl	-624(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L25
	cmpl	$3, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L26
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$4, %rax
	leaq	-96(%rbp), %rdx
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-624(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -8(%rbp)
	jmp	.L13
.L25:
	nop
	jmp	.L12
.L26:
	nop
.L12:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L14
.L24:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$27, -608(%rbp)
	movl	$128, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-624(%rbp), %rax
	movl	$19, %edx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L19:
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L27
	leaq	.LC0(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$29, -608(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	$5, -536(%rbp)
	movl	$4096, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -8(%rbp)
.L18:
	movl	-624(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L28
	cmpl	$3, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L29
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$4, %rax
	leaq	-48(%rbp), %rdx
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-624(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -8(%rbp)
	jmp	.L18
.L28:
	nop
	jmp	.L17
.L29:
	nop
.L17:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L19
.L27:
	nop
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.4.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.4.0, @object
	.size	options.4.0, 28
options.4.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
