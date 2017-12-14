/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_cat.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/14 12:42:34 by fkoehler          #+#    #+#             */
/*   Updated: 2017/12/14 14:51:33 by fkoehler         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <fcntl.h>
#include "libft_asm.h"

int	main(int ac, char **av)
{
	int i = 1;
	int fd;

	if (!av[i])
		return (0);
	if (av[i][0] == '0' && !av[i][1])
		ft_cat(0);
	while (av[i])
	{
		if ((fd = open(av[i], O_RDONLY)) < 0)
		{
			ft_puts_fd("Error : open failed", 2);
			return (1);
		}
		ft_cat(fd);
		if (close(fd) < 0)
		{
			ft_puts_fd("Error : close failed", 2);
			return (1);
		}
		i++;
	}

	return (0);
}
