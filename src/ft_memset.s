; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/06 17:30:09 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/06 19:11:24 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memset

section .text

_ft_memset:
	push rbp
	mov rbp, rsp
	push rdi ; save rdi by pushing it to stack
	test rdx, rdx
	jz return
	mov rcx, rdx ; put rdx into default counting register for looping operation
	mov rdx, rdi ; copy rdi to change its content
	mov al, sil

looping:
	mov byte[rdx], al
	inc rdx
	loop looping

return:
	pop rax ; get rdi back from stack and put it to rax to return it
	leave
	ret
