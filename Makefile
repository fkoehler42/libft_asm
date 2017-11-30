# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/30 18:19:45 by fkoehler          #+#    #+#              #
#    Updated: 2017/11/30 18:23:13 by fkoehler         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# FILES

SRC =

NAME = libfts.a

# DIRECTORIES

# COMPILATION

CC = nasm
FLAGS = -Wall -Werror -Wextra

# PROCESS

all: $(NAME)

$(NAME):
	@echo "\033[0;34m$(NAME) compilation done !\033[0;m"

clean:

fclean: clean
	@rm -f $(NAME)
	@echo "\033[0;34m$(NAME) library deleted !\033[0;m"

re: fclean all

.PHONY: all clean fclean re
