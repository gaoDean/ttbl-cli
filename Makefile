DESTDIR :=
PREFIX := /usr/local

.PHONY: all
all: install
	sh src/ttbl -token
	sh src/ttbl -sync

.PHONY: install
install:
	install -m755 src/ttbl $(DESTDIR)$(PREFIX)/bin

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/ttbl
