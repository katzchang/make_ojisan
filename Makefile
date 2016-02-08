.PHONY: all clean


all: main
	./main

main : lib.o main.o
	gcc -o main lib.o main.o

lib.o : lib.c
	gcc -o lib.o -c lib.c

main.o : main.c
	gcc -o main.o -c main.c

clean:
	-rm main *.o
