; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/06 17:30:09 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/11 12:52:32 by fkoehler         ###   ########.fr        ;
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
	cld
	mov rax, rsi ; put the value to set into rdi bytes
	mov rcx, rdx ; put rdx into counting register for repeat operation
	rep stosb ; store the data of rax into rdi until rcx == 0

return:
	pop rax ; get rdi back from stack and put it into rax to return it
	leave
	ret
