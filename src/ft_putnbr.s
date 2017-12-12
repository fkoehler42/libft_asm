; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/12 14:46:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/12 22:19:50 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1

global _ft_putnbr

section .bss
char: resb 1

section .data
minus db '-'

section .text

_ft_putnbr:
	push rbp
	mov rbp, rsp
	xor r9, r9 ; init counter to stop recursion later
	test edi, edi
	jns putdigit

negative:
	push rdi
	mov rax, SYSCALL(4)
	mov rdi, STDOUT
	lea rsi, [rel minus]
	mov rdx, 1
	syscall
	pop rdi
	neg edi

putdigit:
	cmp rdi, 9
	jg recursion
	mov r8, rdi
	jmp write_digit

recursion:
	inc r9 ; recursion counter
	xor rdx, rdx ; clear high bits of dividend
	mov rax, rdi ; set low bits of dividend
	xor r8, r8
	mov r8, 10 ; set divisor
	idiv r8 ; rdx:rax / r8
	mov rdi, rax
	push rdx ; save the remainder
	call putdigit
	xor r8, r8
	pop r8
	dec r9 ; recursion counter

write_digit:
	add r8, 48
	mov [rel char], r8b
	lea rsi, [rel char]
	mov rax, SYSCALL(4)
	mov rdi, 1
	mov rdx, 1
	syscall
	test r9, r9 ; check if every recursive call has returned
	jz return
	ret

return:
	leave
	ret
