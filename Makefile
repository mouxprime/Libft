# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mianni <mianni@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/24 13:11:58 by mianni            #+#    #+#              #
#    Updated: 2024/05/30 20:29:44 by mianni           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCES = \
	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_memset.c ft_bzero.c  \
	ft_strlcpy.c  ft_toupper.c ft_tolower.c ft_strchr.c \
	ft_strrchr.c ft_strncmp.c ft_memchr.c ft_strnstr.c ft_atoi.c \
	ft_strdup.c ft_substr.c ft_strjoin.c ft_split.c \
	ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c ft_memcpy.c ft_memmove.c ft_strlcat.c \
	ft_memcmp.c ft_calloc.c ft_strtrim.c ft_itoa.c ft_strmapi.c \

SOURCES_BONUS = \
	ft_lstnew.c ft_lstadd_front.c  ft_lstsize.c ft_lstlast.c \
	ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
	ft_lstiter.c  ft_lstmap.c\

INCLUDES = libft.h

OBJECTS = $(SOURCES:.c=.o)

OBJ_BONUS = $(SOURCES_BONUS:.c=.o)

CC = cc
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS) $(OBJ_BONUS)
	$(AR) -rcs $@ $?

bonus: $(OBJECTS) $(OBJ_BONUS)
	$(AR) -rcs $(NAME) $?

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

clean::
	rm -f $(OBJECTS) $(OBJ_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
