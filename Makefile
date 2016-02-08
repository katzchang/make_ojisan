.PHONY: all clean


all: main
	./main

main : lib.o main.o
	gcc -o $@ $^

%.o : %.c
	gcc -o $@ -c $<

clean:
	-rm main *.o
