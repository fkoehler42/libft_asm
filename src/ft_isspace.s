; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/14 14:59:49 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/14 15:17:51 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isspace

section .text

_ft_isspace:
	push rbp
	mov rbp, rsp
	cmp rdi, 32
	je true
	cmp rdi, 9
	jl false
	cmp rdi, 13
	jg false

true:
	mov rax, 1
	leave
	ret

false:
	mov rax, 0
	leave
	ret
