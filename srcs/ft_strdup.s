extern ___error, _ft_strcpy, _ft_strlen, _malloc

global _ft_strdup

section .text

_ft_strdup:
	call _ft_strlen
	push rdi
	inc rax
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je .error
	mov rdi, rax
	pop rsi
	call _ft_strcpy
	ret

.error:
	push r12
	mov r12, rax
	call ___error
	mov [rax], r12
	mov	rax, 0
	pop r12
	ret