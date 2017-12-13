; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strjoin.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/13 17:36:01 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/13 20:00:01 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strjoin

section .text
	extern _malloc
	extern _ft_strlen

_ft_strjoin:
	push rbp
	mov rbp, rsp
	mov rax, 0 ; default ret value (error cases)
	test rdi, rdi
	jz return
	test rsi, rsi
	jz return
	push rsi ; push s2, then s1 (to pop s1 first later)
	push rdi
	call _ft_strlen
	mov r8, rax ; s1 len
	mov rdi, rsi
	call _ft_strlen
	mov r9, rax ; s2 len
	mov rdi, r8
	add rdi, r9
	push rdi ; '\0' offset of joined str
	inc rdi ; joined str total len ('\0' included)
	push r8
	push r9
	call _malloc
	pop r9
	pop r8
	test rax, rax ; malloc error check
	jz return

copy_strs:
	cld
	pop rcx
	mov byte[rax + rcx], 0 ; null terminating '\0'
	mov rdi, rax ; new str
	pop rsi ; s1
	mov rcx, r8 ; s1 len
	rep movsb
	pop rsi ; s2
	mov rcx, r9 ; s2 len
	rep movsb

return:
	leave
	ret
