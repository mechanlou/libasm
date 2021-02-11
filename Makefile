# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rkowalsk <rkowalsk@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/02 14:55:32 by rkowalsk          #+#    #+#              #
#    Updated: 2021/02/09 15:09:18 by rkowalsk         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS =	srcs/ft_strlen.s \
		srcs/ft_strcpy.s \
		srcs/ft_strcmp.s
OBJS = ${SRCS:.s=.o}

%.o: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

.PHONY: all clean fclean re

all: $(NAME)

clean:
	rm -f $(OBJS)

fclean:	clean
	rm -f $(NAME)

re: fclean all