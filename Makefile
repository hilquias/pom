PREFIX ?= /usr

usage:
	@echo Run \'make install\' to install.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p pom $(DESTDIR)$(PREFIX)/bin/pom
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/pom

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/pom

.PHONY: usage install uninstall
