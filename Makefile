CC := gcc
CFLAGS := -O2 -pthread -Wall -Wextra
LDFLAGS := -lm -lrt -pthread -s

target = interbench
objects = interbench.o hackbench.o

$(target): $(objects)
	$(CC) -o $(target) $(objects) $(LDFLAGS)

clean:
	rm -f *.o interbench interbench.read interbench.write interbench.loops_per_ms *~

