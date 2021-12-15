CC := gcc
CFLAGS := -O2 -pthread -Wall -Wextra
LDFLAGS := -lm -lrt -pthread -s

target = interbench
objects = interbench.o hackbench.o
sources = interbench.c interbench.h hackbench.c Makefile

$(target): $(objects)
	$(CC) $(LDFLAGS) $(objects) -o $(target)

$(objects): $(sources)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o interbench interbench.read interbench.write interbench.loops_per_ms *~

