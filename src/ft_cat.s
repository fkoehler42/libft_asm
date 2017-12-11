; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/11 16:54:14 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/11 16:57:02 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define SYSCALL(nb) 0x2000000 | nb

global _ft_cat

section .text

_ft_cat:
	push rbp
	mov rbp, rsp
	leave
	ret
