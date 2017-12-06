; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/06 15:41:29 by fkoehler         ###   ########.fr        ;
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
	test rax, rax ; AND operation (faster than cmp, res = zero if operand == zero)
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
