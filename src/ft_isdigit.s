# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/01 16:56:38 by fkoehler          #+#    #+#              #
#    Updated: 2017/12/01 16:56:40 by fkoehler         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isdigit

section .text

_ft_isdigit:
	push rbp
	mov rbp, rsp
	cmp rdi, 48
	jl false
	cmp rdi, 57
	jg false
	mov rax, 1
	leave
	ret

false:
	mov rax, 0
	leave
	ret
