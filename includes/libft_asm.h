/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_asm.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/04 13:35:00 by fkoehler          #+#    #+#             */
/*   Updated: 2017/12/07 15:02:41 by fkoehler         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_ASM_H
# define LIBFT_ASM_H

void	ft_bzero(void *s, size_t n);
void	*ft_memset(void *b, int c, size_t len);

int		ft_isdigit(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_isalpha(int c);
int		ft_isalnum(int c);

int		ft_tolower(int c);
int		ft_toupper(int c);

size_t	ft_strlen(const char *s);

char	*ft_strcat(char *restrict s1, const char *restrict s2);

int		ft_puts(const char *s);

#endif
