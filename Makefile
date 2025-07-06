NAME		=		libftprintf.a

CC			=		cc
CFLAGS		=	-Wall -Werror -Wextra

LIBFTDIR	=	./libft
LIBFT		=	$(LIBFTDIR)/libft.a

SRCS 		=	ft_printf.c	\
				ft_scrnprint.c

OBJS		=	$(SRCS:.c=.o)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

all:		$(NAME)

$(NAME):	$(LIBFT) $(OBJS)
	cp $(LIBFT) $(NAME)
	ar rcs $(NAME) $(OBJS)

$(LIBFT):
	make -C $(LIBFTDIR) all

clean:
	make -C $(LIBFTDIR) clean
	rm -f $(OBJS)

fclean: clean
	make -C $(LIBFTDIR) fclean
	rm -f $(NAME)

re: fclean all

.PHONY: all fclean clean re
