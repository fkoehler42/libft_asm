; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/11 16:54:14 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/14 14:50:05 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define SYSCALL(nb) 0x2000000 | nb
%define BUFF_SIZE 4096
%define STDOUT 1
%define READ 3
%define WRITE 4

global _ft_cat

section .bss
buff: resb BUFF_SIZE

section .text

_ft_cat:
	push rbp
	mov rbp, rsp
	test edi, edi
	js return ; fd < 0

read:
	push rdi
	lea rsi, [rel buff]
	mov rdx, BUFF_SIZE
	mov rax, SYSCALL(READ)
	syscall
	cmp rax, 0
	jle return

write:
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, SYSCALL(WRITE)
	syscall
	cmp rax, 0
	jl return
	pop rdi
	jmp read

return:
	leave
	ret
