all: loadtoshm readshm

CFLAGS = -Wall -g 
CC = gcc 

.c.o:
	$(CC) -c $< $(CFLAGS) 

loadtoshm: loadtoshm.o
	$(CC) -o $@ loadtoshm.o 

readshm: readshm.o
	$(CC) -o $@ readshm.o

clean:
	rm -f loadtoshm readshm loadtoshm.o readshm.o 
