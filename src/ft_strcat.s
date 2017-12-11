; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/11 11:12:23 by fkoehler         ###   ########.fr        ;
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
	mov r8, rsi
	call _ft_strlen
	add rbx, rax

append:
	cmp byte[r8], 0
	je end
	mov al, byte[r8] ; copy to a one-byte register as tmp
	mov byte[rbx], al
	inc rbx
	inc r8
	jmp append

end:
	mov byte[rbx], 0
	pop rax
	leave
	ret
