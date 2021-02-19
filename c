     1                                  extern ___error
     2                                  
     3                                  global _ft_read
     4                                  
     5                                  section .text
     6                                  
     7                                  _ft_read:	
     8 00000000 B803000002              	mov rax, 0x2000003
     9 00000005 0F05                    	syscall
    10 00000007 7201                    	jc .error
    11 00000009 C3                      	ret
    12                                  
    13                                  .error:
    14 0000000A 48F7D8                  	neg rax
    15 0000000D 48F7D8                  	neg rax
    16 00000010 4154                    	push r12
    17 00000012 4989C4                  	mov r12, rax
    18 00000015 E8(00000000)            	call ___error
    19 0000001A 4C8920                  	mov [rax], r12
    20 0000001D 48C7C0FFFFFFFF          	mov	rax, -1
    21 00000024 415C                    	pop r12
    22 00000026 C3                      	ret
