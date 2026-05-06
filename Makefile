all:
	cc aecal.c -Wall -O2 -o aecal
	mv aecal bin
install: all
	cp bin/aecal /usr/local/bin
	cp doc/aecal.1 /usr/share/man/man1/
uninstall:
	rm /usr/local/bin/aecal
	rm /usr/share/man/man1/aecal.1
clean:
	rm bin/aecal

.PHONY: all install uninstall clean
