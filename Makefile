all:
	cc aecal.c -Wall -O2 -o aecal
	mv aecal bin
install: all
	mv bin/aecal /usr/local/bin
uninstall:
	rm /usr/local/bin/aecal
clean:
	rm bin/aecal

.PHONY: all install uninstall clean
