global _ft_strcmp

section .text

_ft_strcmp:
	push rbx
	push rcx
	xor rcx, rcx

.loop:
	movzx rax, byte [rdi + rcx]
	movzx rbx, byte [rsi + rcx]
	cmp rax, 0
	je .exit
	cmp rbx, 0
	je .exit
	cmp rax, rbx
	jne .exit
	inc rcx
	jmp .loop

.exit:
	sub rax, rbx
	pop rcx
	pop rbx
	ret
	