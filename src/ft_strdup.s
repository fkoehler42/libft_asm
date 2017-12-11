; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/11 14:06:41 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/11 16:43:44 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strdup

section .text
	extern _malloc
	extern _ft_strlen

_ft_strdup:
	push rbp
	mov rbp, rsp
	push rdi ; save str ptr before function calls
	call _ft_strlen
	push rax ; save strlen
	mov rdi, rax ; 	set size arg for malloc
	inc rdi ;		including '\0' byte
	call _malloc
	test rax, rax ; check malloc return
	jz return
	pop rcx ; use strlen as loop counter
	mov rdi, rax
	pop rsi
	cld
	mov byte[rdi + rcx], 0 ; set the terminating '\0'
	rep movsb

return:
	leave
	ret
