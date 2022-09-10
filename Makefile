DESTDIR :=
PREFIX := /usr/local

all:

.PHONY: install
install:
	install -m755 src/ttbl $(DESTDIR)$(PREFIX)/bin
	install -m755 src/ttblsync $(DESTDIR)$(PREFIX)/bin

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/ttbl
	rm -f $(DESTDIR)$(PREFIX)/bin/ttblsync
