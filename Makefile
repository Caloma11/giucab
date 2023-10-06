CFLAGS = -Wall -Wextra -Werror -Wno-implicit-function-declaration
NAME = libft.a

all: hello.o bye.o
	ar vcrs $(NAME) hello.o bye.o

hello.o: hello.c
	cc $(CFLAGS) -c hello.c

bye.o: bye.c
	cc $(CFLAGS) -c bye.c

clean:
	rm -f hello.o bye.o

re:
	rm -f hello.o bye.o libft.a
	cc $(CFLAGS) -c hello.c -o hello.o
	cc $(CFLAGS) -c bye.c -o bye.o
	ar vcrs $(NAME) hello.o bye.o

fclean:
	rm -f hello.o bye.o libft.a

.PHONY: all clean re fclean