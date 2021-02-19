extern ___error

global _ft_write

section .text

_ft_write:
	mov rax, 0x2000004
	syscall
	jc .error
	ret

.error:
	neg rax
	neg rax
	push r12
	mov r12, rax
	call ___error
	mov [rax], r12
	mov	rax, -1
	pop r12
	ret