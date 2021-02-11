global _ft_strcpy

section .text

_ft_strcpy:
	push r11
	xor r11, r11

.loop:
	cmp byte [rdi + r11], 0
	je .exit
	mov ax, [rdi + r11]
	mov [rsi + r11], ax
	inc r11
	jmp .loop

.exit:
	mov byte [rsi + r11], 0
	pop r11
	mov rax, rsi
	ret