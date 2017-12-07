; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/07 14:05:35 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/07 16:49:13 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb) 0x2000000 | nb

global _ft_puts

section .data
null_str:
	.val db "(null)", 10
	.len equ $ - null_str.val

section .text
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	test rdi, rdi
	jz null
	push rdi ; save str ptr
	call _ft_strlen
	pop rsi ; get str ptr back and put it into rsi
	mov byte[rsi + rax], 10 ; adding \n to str
	inc rax ; inc strlen
	mov rdx, rax ; set strlen arg
	jmp write_str

null:
	lea rsi, [rel null_str.val]
	mov rdx, null_str.len

write_str:
	mov rdi, 1 ; set STDOUT arg
	mov rax, MACH_SYSCALL(4) ; WRITE syscall
	syscall
	cmp rax, 0 ; check syscall return value
	jge set_and_ret
	leave
	ret

set_and_ret:
	mov rax, 10 ; default ret value
	leave
	ret
