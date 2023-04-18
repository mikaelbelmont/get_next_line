# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbarreto <mbarreto@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/06 19:35:58 by mbarreto          #+#    #+#              #
#    Updated: 2022/06/21 20:27:44 by mbarreto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = so_long

SRCS = get_next_line.c get_next_line_bonus.c \
	get_next_line_utils.c get_next_line_utils_bonus.c

OBJS = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Wall -Werror -Wextra

$(NAME): $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) -lmlx -framework OpenGL -framework AppKit -o $(NAME)

%.o: %.c
	$(CC) -Imlx -Imac -O3 -c $< -o $@
##-g -fsanitize=address 

all: $(NAME)

clean:
	rm -rf $(OBJS)

fclean:	clean
	rm -rf $(NAME)

re: fclean all
