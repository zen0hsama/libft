# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ezonda <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/12 09:46:09 by ezonda            #+#    #+#              #
#    Updated: 2019/04/06 14:40:34 by ezonda           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

NAME2 = printf/libftprintf.a

SRC = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
	  ft_isprint.c ft_itoa.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c\
	  ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar.c \
	  ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c \
	  ft_putstr.c ft_putstr_fd.c ft_strcat.c ft_strchr.c ft_strclr.c \
	  ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c \
	  ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c \
	  ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c \
	  ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strrev.c ft_strsplit.c \
	  ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c \
	  ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_lstdelone.c \
	  ft_lstdel.c ft_is_prime.c ft_recursive_power.c ft_sqrt.c \
	  ft_print_words_tables.c get_next_line.c

OBJ = $(SRC:.c=.o)

CC = gcc

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	@$(CC) $(FLAGS) -c $(SRC)
	@make -C printf/
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@libtool -static -o $(NAME) $(NAME) $(NAME2)

%.o: %.c
	@$(CC) $(FLAGS) $@ -c $< $(FLAGS)

clean:
	@make clean -C printf/
	@rm -f $(OBJ)

fclean: clean
	@make fclean -C printf/
	@rm -f $(NAME)

re: fclean all
