# simple makefile example

# method 1
# main: main.o
# 	gcc main.o -o main
# main.o:
# 	gcc main.c -c
# clean:
# 	rm -rf main.o main

# "main" is the target file, "main.o" is the object file(dependency), "clean" is the fake entry.
# 下了"make" or "make main"指令，會先找到line 16，因為還沒有main.o，所以會先跳到line 18(dependency)，接著執行line 19
# 執行完之後產生main.o，接著回到line 17執行，然後產生最終執行檔"main"

# method 2
main: main.o
	gcc -o main main.o 
main.o:
	gcc -c main.c 
clean:
	rm -rf main.o main
