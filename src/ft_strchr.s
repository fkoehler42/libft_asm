; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/11 17:01:32 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/11 18:06:55 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strchr

section .text
	extern _ft_strlen

_ft_strchr:
	push rbp
	mov rbp, rsp
	push rdi
	call _ft_strlen
	mov rcx, rax
	mov rax, rsi
	pop rdi
	repne scasb
	test rcx, rcx ; have we reached the end of str ?
	jg found ; if not, char found
	inc rdi ; else, go to '\0'
	test dil, al
	je found
	mov rax, 0 ; null case
	jmp return

found:
	dec rdi
	mov rax, rdi

return:
	leave
	ret
