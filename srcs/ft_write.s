extern ___error

global _ft_write

section .text

_ft_write:
	mov rax, 0x2000004
	syscall
	ret
	cmp rax, 0
	jl .error
	ret

.error:
	neg rax
	push r11
	mov r11, rax
	call ___error
	mov [rax], r11
	mov	rax, -1
	pop r11
	ret