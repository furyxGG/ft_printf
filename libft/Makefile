SRCS = ft_itoa.c

OBJS = $(SRCS:.c=.o)

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra
CC = cc
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

clean:
	rm -f $(OBJS)

.PHONY: all clean fclean re
