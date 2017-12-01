/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/01 17:35:31 by fkoehler          #+#    #+#             */
/*   Updated: 2017/12/01 17:49:44 by fkoehler         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	ft_isdigit(int c);
int	ft_isascii(int c);

int	main(int ac, char **av)
{
	char	c1;
	char	c2;
	char	c3;
	char	c4;
	char	c5;

	c1 = 0;
	c2 = 127;
	c3 = '5';
	c4 = -5;
	c5 = (char)4200;

	printf("ft_isdigit of %c : %d\n", c1, ft_isdigit(c1));
	printf("ft_isdigit of %c : %d\n", c2, ft_isdigit(c2));
	printf("ft_isdigit of %c : %d\n", c3, ft_isdigit(c3));
	printf("ft_isdigit of %c : %d\n", c4, ft_isdigit(c4));
	printf("ft_isdigit of %c : %d\n\n", c5, ft_isdigit(c5));

	printf("ft_isascii of %c : %d\n", c1, ft_isascii(c1));
	printf("ft_isascii of %c : %d\n", c2, ft_isascii(c2));
	printf("ft_isascii of %c : %d\n", c3, ft_isascii(c3));
	printf("ft_isascii of %c : %d\n", c4, ft_isascii(c4));
	printf("ft_isascii of %c : %d\n\n", c5, ft_isascii(c5));

	return (0);
}
