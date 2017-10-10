
CC=g++
CFLAGS=$(shell pkg-config --cflags opencv)
LIBS=$(shell pkg-config --libs opencv)

test : ./src/main.cpp 
	$(CC) $< $(CFLAGS) -o $@ $(LIBS) 


clean:
	rm test test.o
