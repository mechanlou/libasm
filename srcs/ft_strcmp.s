global _ft_strcmp

section .text

_ft_strcmp:
	push rbx
	push rcx
	push r12
	xor rcx, rcx

.loop:
	cmp byte [rdi + rcx], 0
	je .exit
	cmp byte [rsi + rcx], 0
	je .exit
	mov r12, [rsi + rcx]
	cmp [rdi + rcx], r12
	jne .exit
	inc rcx
	jmp .loop

.exit:
	movzx rax, byte [rdi + rcx]
	movzx rbx, byte [rsi + rcx]
	sub rax, rbx
	pop r12
	pop rcx
	pop rbx
	ret
	