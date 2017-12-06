; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              ;
;    Updated: 2017/12/06 13:43:54 by fkoehler         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat

section .text
	extern _ft_strlen

_ft_strcat:
	push rbp
	mov rbp, rsp
	push rdi
	call _ft_strlen
	add rdi, rax

looping:
	cmp byte [rsi], 0
	je end
	mov al, [rsi]
	mov [rdi], al
	inc rdi
	inc rsi
	jmp looping

end:
	mov byte [rdi], 0
	pop rax
	leave
	ret
