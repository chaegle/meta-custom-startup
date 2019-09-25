CFLAGS += -Wall -g
PROGS=simpleserver
BINDIR = /usr/bin
all: $(PROGS)

simpleserver: simpleserver.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f $(PROGS)

install:
	mkdir -p $(TARGET_DIR)$(BINDIR)
	install -m 755 $(PROGS) $(TARGET_DIR)$(BINDIR)
