DESTDIR :=
PREFIX := /usr/local

.PHONY: install
install:
	install -m755 src/ttbl $(DESTDIR)$(PREFIX)/bin

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/ttbl
