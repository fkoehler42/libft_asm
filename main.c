/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/01 17:35:31 by fkoehler          #+#    #+#             */
/*   Updated: 2017/12/14 17:41:43 by fkoehler         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# define RED	"\033[0;31m"
# define GREEN	"\033[0;32m"
# define OFF	"\033[0;m"

# define STRLEN 42
#define OK printf("[%sOK%s]\n", GREEN, OFF)
#define ERROR printf("[%sERROR%s]\n", RED, OFF)
#define OK_CHAR(c) printf("char = %-45c\t[%sOK%s]\n", c, GREEN, OFF)
#define ERROR_CHAR(c) printf("char = %-45c\t[%sERROR%s]\n", c, RED, OFF)
#define STR(s) printf("str = \"%s\"\n", s)
#define OK_STR(s) printf("str = \"%s\"%*c\t[%sOK%s]\n", s, (int)(45 - strlen(s)), ' ', GREEN, OFF)
#define ERROR_STR(s) printf("str = \"%s\"%*c\t[%sERROR%s]\n", s, (int)(45 - strlen(s)), ' ', RED, OFF)

#include <limits.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>
#include "libft_asm.h"

int	main(int ac, char **av)
{
	int	c1, c2, c3, c4, c5;
	c1 = -30; c2 = 127; c3 = 102; c4 = 75; c5 = 120;

	int n1, n2, n3, n4, n5;
	n1 = 0; n2 = 24; n3 = -8237; n4 = INT_MAX; n5 = INT_MIN;

	char	s1[STRLEN] = "Je";
	char	s2[] = " suis un poisson";
	char	s3[] = " perdu dans l'ocean";
	char	s4[] = "$$";
	char	s5[] = "";

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

	printf("\n----- ft_strcat -----\n");
	STR(ft_strcat(s1, s2));
	STR(ft_strcat(s1, s3));
	STR(ft_strcat(s1, s4));
	STR(ft_strcat(s1, s5));

	printf("\n----- ft_puts -----\n");
	ft_puts(s1) == puts(s1) ? OK : ERROR;
	ft_puts(s2) == puts(s2) ? OK : ERROR;
	ft_puts(s5) == puts(s5) ? OK : ERROR;
	ft_puts(NULL) == puts(NULL) ? OK : ERROR;

	printf("\n----- ft_bzero -----\n");
	ft_bzero(s1, 0);STR(s1);
	ft_bzero(s1, 1);STR(s1);STR(&s1[1]);s1[0] = 'j';
	ft_bzero(&s1[ft_strlen(s1) - 2], 2);STR(s1);

	printf("\n----- ft_memset -----\n");
	STR(ft_memset(s1, 'a', 0));
	STR(ft_memset(s1, 'a', 10));
	STR(ft_memset(s1, '$', 30));

	printf("\n----- ft_memcpy -----\n");
	ft_memcpy(s1, "Je", 0);STR(s1);
	ft_memcpy(s1, "Je", 2);STR(s1);
	ft_memcpy(&s1[2], s2, ft_strlen(s2));STR(s1);
	ft_memcpy(s1, "", STRLEN + 1);STR(s1);

	printf("\n----- ft_strdup -----\n");
	char *allocated = NULL;
	allocated = ft_strdup(s1);STR(allocated);free(allocated);
	allocated = ft_strdup(s2);STR(allocated);free(allocated);
	allocated = ft_strdup(s3);STR(allocated);free(allocated);
	allocated = ft_strdup(s4);STR(allocated);free(allocated);

	printf("\n\n////////// BONUS PART \\\\\\\\\\\\\\\\\\\\\n");
	printf("\n----- ft_isspace -----\n");
	ft_isspace(c1) == isspace(c1) ? OK_CHAR(c1) : ERROR_CHAR(c1);
	ft_isspace(c4) == isspace(c4) ? OK_CHAR(c4) : ERROR_CHAR(c4);
	ft_isspace(' ') == isspace(' ') ? OK_CHAR(' ') : ERROR_CHAR(' ');
	ft_isspace('\v') == isspace('\v') ? OK_CHAR('\v') : ERROR_CHAR('\v');
	ft_isspace('\n') == isspace('\n') ? OK_CHAR('\n') : ERROR_CHAR('\n');
	ft_isspace('\f') == isspace('\f') ? OK_CHAR('\f') : ERROR_CHAR('\f');
	ft_isspace('\t') == isspace('\t') ? OK_CHAR('\t') : ERROR_CHAR('\t');
	ft_isspace('\r') == isspace('\r') ? OK_CHAR('\r') : ERROR_CHAR('\r');

	printf("\n----- ft_strchr -----\n");
	STR(ft_strchr(s2, ' '));
	STR(ft_strchr(s2, 'o'));
	STR(ft_strchr(s2, 0));
	STR(ft_strchr(s2, 'z'));
	STR(ft_strchr("", 'a'));

	printf("\n----- ft_puts_fd -----\n");
	ft_puts_fd("Je", 2);
	ft_puts_fd(s2, 2);
	ft_puts_fd(s3, 2);
	ft_puts_fd(NULL, 2);

	printf("\n----- ft_strcmp -----\n");
	ft_strcmp(s1, s2) == strcmp(s1, s2) ? OK_STR(s1) : ERROR_STR(s1);
	ft_strcmp(s2, s3) == strcmp(s2, s3) ? OK_STR(s2) : ERROR_STR(s2);
	ft_strcmp(s3, s4) == strcmp(s3, s4) ? OK_STR(s3) : ERROR_STR(s3);
	ft_strcmp(s4, s2) == strcmp(s4, s2) ? OK_STR(s4) : ERROR_STR(s4);
	ft_strcmp(s3, s3) == strcmp(s3, s3) ? OK_STR(s3) : ERROR_STR(s3);
	ft_strcmp(s5, s4) == strcmp(s5, s4) ? OK_STR(s5) : ERROR_STR(s5);

	printf("\n----- ft_strjoin -----\n");
	char *allocated2 = NULL;
	allocated = ft_strjoin("Je suis un poisson", s3);STR(allocated);
	allocated2 = ft_strjoin(allocated, s4);STR(allocated2);free(allocated);
	allocated = ft_strjoin("", s4);STR(allocated);free(allocated2);
	allocated2 = ft_strjoin("VOID", NULL);STR(allocated2);free(allocated);
	allocated = ft_strjoin("", "");STR(allocated);free(allocated2);free(allocated);

	printf("\n----- ft_putnbr -----\n");
	ft_putnbr(n1);
	putchar('\n');
	ft_putnbr(n2);
	putchar('\n');
	ft_putnbr(n3);
	putchar('\n');
	ft_putnbr(n4);
	putchar('\n');
	ft_putnbr(n5);
	putchar('\n');

	return (0);
}
