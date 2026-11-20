CC ?= cc
CFLAGS ?= -Wall -O2
TARGET = aecal

PREFIX ?= /usr/local
BINDIR = $(DESTDIR)$(PREFIX)/bin
MANPREFIX ?= $(PREFIX)/share/man
MANDIR = $(DESTDIR)$(MANPREFIX)/man1

all: $(TARGET)

$(TARGET): aecal.c config.h
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@ aecal.c

install: $(TARGET)
	mkdir -p $(BINDIR) $(MANDIR)
	install -m 755 $(TARGET) $(BINDIR)/$(TARGET)
	install -m 644 doc/aecal.1 $(MANDIR)/$(TARGET).1

uninstall:
	rm -f $(BINDIR)/$(TARGET)
	rm -f $(MANDIR)/$(TARGET).1

clean:
	rm -f $(TARGET)

.PHONY: all install uninstall clean
