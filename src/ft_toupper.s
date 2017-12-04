; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/04 12:12:32 by flav             ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_toupper

section .text

_ft_toupper:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp rax, 97
	jl return
	cmp rax, 122
	jg return
	sub rax, 32
	jmp return

return:
	leave
	ret
