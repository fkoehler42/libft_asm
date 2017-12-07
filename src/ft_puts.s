; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/07 14:05:35 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/07 19:57:53 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define SYSCALL(nb) 0x2000000 | nb

global _ft_puts

section .data
string:
	.null_val db "(null)", 10
	.null_len equ $ - string.null_val
	.newline db 10 ; \n

section .text
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	test rdi, rdi
	jz null
	mov rsi, rdi
	call _ft_strlen
	mov rdx, rax ; set strlen arg
	jmp write_str

null:
	lea rsi, [rel string.null_val]
	mov rdx, string.null_len
	mov rdi, 1 ; set STDOUT arg
	mov rax, SYSCALL(4) ; WRITE syscall
	syscall
	cmp rax, 0 ; check syscall return value
	jge set_ret_val
	jmp return

write_str:
	mov rdi, 1
	mov rax, SYSCALL(4)
	syscall
	cmp rax, 0
	jl return

write_newline:
	mov rax, SYSCALL(4)
	lea rsi, [rel string.newline]
	mov rdx, 1
	syscall
	cmp rax, 0
	jl return

set_ret_val:
	mov rax, 10 ; default ret value

return:
	leave
	ret
