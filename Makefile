CC = g++
CFLAGS = -Wall -Wextra -std=c++11

all: main

main: main.o FuncA.o
    $(CC) $(CFLAGS) -o main main.o FuncA.o

main.o: main.cpp FuncA.h
    $(CC) $(CFLAGS) -c main.cpp

FuncA.o: FuncA.cpp FuncA.h
    $(CC) $(CFLAGS) -c FuncA.cpp

clean:
    rm -f *.o main
