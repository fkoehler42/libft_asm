; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/11 16:44:23 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

section .text

_ft_strlen:
	push rbp
	mov rbp, rsp
	xor rax, rax ; fast initialization to zero
	mov rcx, -1
	cld ; clear direction flag to make the operation from left to right
	repne scasb ; repeat while dil not equal to al (last byte of rax)
	not rcx
	dec rcx
	mov rax, rcx

return:
	leave
	ret
