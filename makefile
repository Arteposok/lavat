PREFIX = /usr/local
CC = gcc
CFLAGS = -O2 -Wall

lavat: lavat.c
	$(CC) lavat.c -o lavat -lm

.PHONY: clean
clean:
	$(RM) lavat

.PHONY: install
install: lavat
	mkdir -p $(PREFIX)/bin
	install lavat $(PREFIX)/bin/lavat

.PHONY: uninstall
uninstall:
	$(RM) $(PREFIX)/bin/lavat

