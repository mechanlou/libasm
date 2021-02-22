# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rkowalsk <rkowalsk@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/02 14:55:32 by rkowalsk          #+#    #+#              #
#    Updated: 2021/02/22 13:51:32 by rkowalsk         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRCS = \
	srcs/ft_strcmp.s \
	srcs/ft_strlen.s \
	srcs/ft_strcpy.s \
	srcs/ft_write.s \
	srcs/ft_strdup.s \
	srcs/ft_read.s

OBJS = ${SRCS:.s=.o}

$(NAME): $(OBJS) 
	ar rc $(NAME) $(OBJS)

$(OBJS): %.o: %.s
	nasm -f macho64 $< -o $@

.PHONY: all clean fclean re

all: $(NAME)

clean:
	rm -f $(OBJS)

fclean:	clean
	rm -f $(NAME)

re: fclean all