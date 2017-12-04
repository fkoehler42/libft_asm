; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/04 12:12:32 by flav             ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_tolower

section .text

_ft_tolower:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rax, 65
	jl return
	cmp rax, 90
	jg return
	add rax, 32
	jmp return

return:
	leave
	ret
