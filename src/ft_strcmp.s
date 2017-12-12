; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/12 10:33:52 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/12 12:21:25 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcmp

section .text
	extern _ft_strlen

_ft_strcmp:
	push rbp
	mov rbp, rsp
	push rdi
	push rsi
	call _ft_strlen
	mov r8, rax
	pop rdi ; set s2 as strlen arg
	push rdi
	call _ft_strlen
	cmp rax, r8 ; s2 len vs s1 len
	jge s1_shorter
	jmp s2_shorter

inc_rcx:
	inc rcx
	jmp compare

s1_shorter:
	mov rcx, r8
	jmp compare

s2_shorter:
	mov rcx, rax

compare:
	test rcx, rcx ; if empty string case
	jz inc_rcx ; then increment rcx to loop once
	pop rdi ; s2 to rdi
	pop rsi ; s1 to rsi
	cld
	repe cmpsb ; while sil - dil == 0
	je equal
	dec rdi
	dec rsi
	mov al, byte[rsi]
	mov cl, byte[rdi] ; using cl as casting tmp value
	sub rax, rcx
	jmp return

equal:
	mov rax, 0

return:
	leave
	ret
