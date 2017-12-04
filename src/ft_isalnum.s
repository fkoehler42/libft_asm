; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/04 11:19:34 by flav             ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalnum

section .text
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	push rbp
	mov rbp, rsp
	call _ft_isalpha
	test rax, rax
	jne true
	call _ft_isdigit
	test rax, rax
	jne true
	mov rax, 0
	leave
	ret

true:
	mov rax, 1
	leave
	ret
