CC=gcc
CFLAGS=-W -Wall -g -O2 -s -pipe
LDFLAGS=-lrt -lm -pthread

target = interbench
objects = interbench.o hackbench.o

$(target): $(objects)
	$(CC) -o $(target) $(objects) $(LDFLAGS)

clean:
	rm -f *.o interbench interbench.read interbench.write interbench.loops_per_ms *~
