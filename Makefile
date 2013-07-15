CC		=gcc

INC		=-I/include
LIB		=-L/lib -c

all: hello

hello: hello.o
	$(CC) -o $@ $< $(LIB)
hello.o:hello.c
	$(CC) -c $< $(INC)
clean:
	rm -rf hello hello.o
