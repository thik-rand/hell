prefix = /usr/

all: hell.c
	$(CC) hell.c -g -o  hell

install: all
	install -D hell $(DESTDIR)$(prefix)/bin/hel

clean:
	-rm -f hell
distclean: clean

uninstall:
	-rm -f $(DESDIR)$(prefix)/bin/hel
