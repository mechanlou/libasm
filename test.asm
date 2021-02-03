segment .data
    value db 14

segment .text
    global _main

_main:
    mov bx, value
    sub bx, 1