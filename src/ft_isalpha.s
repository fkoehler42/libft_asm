; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/04 10:52:11 by flav             ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalpha

section .text

_ft_isalpha:
	push rbp
	mov rbp, rsp
	mov rax, 1
	cmp rdi, 65
	jl false
	cmp rdi, 122
	jg false
	cmp rdi, 90
	jg in_range
	jmp return

in_range:
	cmp rdi, 97
	jl false
	jmp return

false:
	mov rax, 0

return:
	leave
	ret
