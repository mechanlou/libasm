global _ft_strcmp

section .text

_ft_strcmp:
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
	mov al, byte [rdi + rcx]
	sub al, byte [rsi + rcx]
	pop r12
	pop rcx
	ret
	