CC=gcc 
CFLAGS=-Wall -pedantic -ansi

all: project2.c term.o polynomial.o basiclist.o
	$(CC) $(CFLAGS) project2.c term.o polynomial.o basiclist.o -o project2

term.o: term.c
	$(CC) $(CFLAGS) -c term.c

polynomial.o: polynomial.c
	$(CC) $(CFLAGS) -c polynomial.c

basiclist.o: basiclist.c
	$(CC) $(CFLAGS) -c basiclist.c

clean:
	rm -f *.o *~ project2.exe
