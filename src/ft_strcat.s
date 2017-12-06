; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/06 16:24:48 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat

section .text
	extern _ft_strlen

_ft_strcat:
	push rbp
	mov rbp, rsp
	push rdi
	mov rbx, rdi
	mov rcx, rsi
	call _ft_strlen
	add rbx, rax

append:
	cmp byte[rcx], 0
	je end
	mov al, byte[rcx] ; copy to a one-byte register as tmp
	mov byte[rbx], al
	inc rbx
	inc rcx
	jmp append

end:
	mov byte[rbx], 0
	pop rax
	leave
	ret
