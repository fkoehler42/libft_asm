; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/04 10:55:19 by flav             ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isprint

section .text

_ft_isprint:
	push rbp
	mov rbp, rsp
	cmp rdi, 32
	jl false
	cmp rdi, 126
	jg false
	mov rax, 1
	leave
	ret

false:
	mov rax, 0
	leave
	ret
