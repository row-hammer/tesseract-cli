PROG = hypercube
SRC = main.c

CC ?= cc
CFLAGS ?= -Wall -Wextra -Werror -O3 -std=gnu99
LIBS = -lm -lncurses

.PHONY: all clean

all: $(PROG)

$(PROG): $(SRC)
	$(CC) $(SRC) -o $(PROG) $(CFLAGS) $(LIBS)

clean:
	rm -f $(PROG)
