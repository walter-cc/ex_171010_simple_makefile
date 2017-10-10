# simple makefile example

main: main.o
	gcc main.o -o main
main.o:
	gcc main.c -c
clean:
	rm -rf main.o main
