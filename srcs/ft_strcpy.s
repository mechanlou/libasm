global _ft_strcpy

section .text

_ft_strcpy:
	push r11
	xor r11, r11

.loop:
	cmp byte [rsi + r11], 0
	je .exit
	mov ax, [rsi + r11]
	mov [rdi + r11], ax
	inc r11
	jmp .loop

.exit:
	mov byte [rdi + r11], 0
	pop r11
	mov rax, rdi
	ret