# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/01 17:14:34 by fkoehler          #+#    #+#              #
#    Updated: 2017/12/01 17:31:35 by fkoehler         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isascii

section .text

_ft_isascii:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	jl false
	cmp rdi, 128
	jg false
	mov rax, 1
	leave
	ret

false:
	mov rax, 0
	leave
	ret
