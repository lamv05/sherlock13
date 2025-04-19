CC = gcc
CFLAGS = -I/usr/include/SDL2
LDFLAGS = -lSDL2_image -lSDL2_ttf -lSDL2 -lpthread

all: sh13 server

sh13: sh13.c
	$(CC) -o sh13 $(CFLAGS) sh13.c $(LDFLAGS)

server: server.c
	$(CC) -o server server.c

clean:
	rm -f sh13 server
