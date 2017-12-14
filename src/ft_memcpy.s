; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/11 13:42:26 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/14 17:42:43 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memcpy

section .text

_ft_memcpy:
	push rbp
	mov rbp, rsp
	push rdi
	test rdx, rdx
	jz return
	mov rcx, rdx
	cld
	rep movsb

return:
	pop rax
	leave
	ret
