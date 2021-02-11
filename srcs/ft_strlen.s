global _ft_strlen

section .text

_ft_strlen :
	push r13
	xor r13, r13

.while :
	cmp byte [rdi + r13], 0
	je .exit
	inc r13
	jmp .while

.exit :
	mov rax, r13
	pop r13
	ret

	;fonction(rdi, rsi, rdx, r8, r9)