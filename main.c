/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/01 17:35:31 by fkoehler          #+#    #+#             */
/*   Updated: 2017/12/06 11:29:54 by fkoehler         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# define RED	"\033[0;31m"
# define GREEN	"\033[0;32m"
# define OFF	"\033[0;m"

#define OK_CHAR(c) printf("char = %-15c\t [%sOK%s]\n", c, GREEN, OFF)
#define ERROR_CHAR(c) printf("char = %-15c\t [%sERROR%s]\n", c, RED, OFF)
#define OK_STR(s) printf("str = %-15s\t [%sOK%s]\n", s, GREEN, OFF)
#define ERROR_STR(s) printf("str = %-15s\t [%sERROR%s]\n", s, RED, OFF)

#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include "libft_asm.h"

int	main(int ac, char **av)
{
	char	c1, c2, c3, c4, c5;
	char	*s1, *s2, *s3, *s4, *s5;

	c1 = -30; c2 = 127; c3 = 102; c4 = 75; c5 = 120;
	s1 = "";
	s2 = "Hello World!";
	s3 = "Hello\0World!";
	s4 = "0123456789";
	s5 = "  \t   \  $   ";

	printf("\n----- ft_isdigit -----\n");
	ft_isdigit(c1) == isdigit(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_isdigit(c2) == isdigit(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_isdigit(c3) == isdigit(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_isdigit(c4) == isdigit(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_isdigit(c5) == isdigit(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_isascii -----\n");
	ft_isascii(c1) == isascii(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_isascii(c2) == isascii(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_isascii(c3) == isascii(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_isascii(c4) == isascii(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_isascii(c5) == isascii(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_isprint -----\n");
	ft_isprint(c1) == isprint(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_isprint(c2) == isprint(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_isprint(c3) == isprint(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_isprint(c4) == isprint(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_isprint(c5) == isprint(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_isalpha -----\n");
	ft_isalpha(c1) == isalpha(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_isalpha(c2) == isalpha(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_isalpha(c3) == isalpha(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_isalpha(c4) == isalpha(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_isalpha(c5) == isalpha(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_isalnum -----\n");
	ft_isalnum(c1) == isalnum(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_isalnum(c2) == isalnum(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_isalnum(c3) == isalnum(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_isalnum(c4) == isalnum(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_isalnum(c5) == isalnum(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_toupper -----\n");
	ft_toupper(c1) == toupper(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_toupper(c2) == toupper(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_toupper(c3) == toupper(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_toupper(c4) == toupper(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_toupper(c5) == toupper(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_tolower -----\n");
	ft_tolower(c1) == tolower(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_tolower(c2) == tolower(c2) ? OK_CHAR(c2) : ERROR_CHAR(c2);
	ft_tolower(c3) == tolower(c3) ? OK_CHAR(c3) : ERROR_CHAR(c3);
	ft_tolower(c4) == tolower(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_tolower(c5) == tolower(c5) ? OK_CHAR(c5) : ERROR_CHAR(c5);

	printf("\n----- ft_strlen -----\n");
	ft_strlen(s1) == strlen(s1) ? OK_STR(s1) : ERROR_STR(s1);
	ft_strlen(s2) == strlen(s2) ? OK_STR(s2) : ERROR_STR(s2);
	ft_strlen(s3) == strlen(s3) ? OK_STR(s3) : ERROR_STR(s3);
	ft_strlen(s4) == strlen(s4) ? OK_STR(s4) : ERROR_STR(s4);
	ft_strlen(s5) == strlen(s5) ? OK_STR(s5) : ERROR_STR(s5);

	return (0);
}
