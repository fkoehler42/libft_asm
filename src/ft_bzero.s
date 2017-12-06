; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/06 16:35:47 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/06 16:52:07 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_bzero

section .text

_ft_bzero:
	push rbp
	mov rbp, rsp
	test rsi, rsi
	jz return
	mov rcx, rsi

looping:
	mov byte[rdi], 0
	inc rdi
	loop looping

return:
	leave
	ret
