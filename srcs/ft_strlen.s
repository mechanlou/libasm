SECTION .text

.ft_strlen :
	push rbp
	mov rsp, rbp
	xor r13, r13

.while :
	cmp byte [rdi + r13], 0
	je .exit
	inc r13
	jmp .while

.exit :
	mov rax, r13
	mov rbp, rsp
	pop rbp
	ret

	;fonction(rdi, rsi, rdx, r8, r9)