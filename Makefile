# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fkoehler <fkoehler@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/30 18:19:45 by fkoehler          #+#    #+#              #
#    Updated: 2017/12/14 18:12:29 by fkoehler         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# FILES

SRCS = ft_bzero.s \
	ft_cat.s \
	ft_isalnum.s \
	ft_isalpha.s \
	ft_isascii.s \
	ft_isdigit.s \
	ft_isprint.s \
	ft_isspace.s \
	ft_memcpy.s \
	ft_memset.s \
	ft_putnbr.s \
	ft_puts.s \
	ft_puts_fd.s \
	ft_strcat.s \
	ft_strcmp.s \
	ft_strchr.s \
	ft_strdup.s \
	ft_strjoin.s \
	ft_strlen.s \
	ft_tolower.s \
	ft_toupper.s

NAME = libfts.a
OBJS = $(SRCS:.s=.o)
O2 = $(addprefix $(OPATH), $(OBJS))

# DIRECTORIES

vpath %.s src
INC = includes/
OPATH = obj/

# COMPILATION

ASM = nasm
FLAGS = -f macho64

# PROCESS

all: $(NAME)

$(NAME): $(O2)
	@ar rc $(NAME) $(O2)
	@ranlib $(NAME)
	@echo "\033[0;34m$(NAME) compilation done !\033[0;m"

$(OPATH)%.o: %.s
	@$(ASM) $(FLAGS) $< -o $@

clean:
	@rm -f $(O2)
	@echo "\033[0;34m$(NAME) object files deleted !\033[0;m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[0;34m$(NAME) library deleted !\033[0;m"

re: fclean all

.PHONY: all clean fclean re
