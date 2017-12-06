; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/06 15:35:52 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

section .text

_ft_strlen:
	push rbp
	mov rbp, rsp
	xor rax, rax ; fast initialization to zero

counting:
	cmp byte[rdi], 0
	je return
	inc rax
	inc rdi
	jmp counting

return:
	leave
	ret
