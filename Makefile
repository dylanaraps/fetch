PREFIX        ?=  /usr
RM            ?=  rm -f
INSTALL_DIR   ?=  install -m755 -d
INSTALL_PROG  ?=  install -m755
INSTALL_FILE  ?=  install -m644

all:
	@echo Run \'make install\' to install Neofetch

install:
	#
	# Create directories
	#
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/man/man1
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/neofetch/ascii/distro
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/neofetch/functions/info
	#
	# Install files
	#
	$(INSTALL_PROG) neofetch $(DESTDIR)$(PREFIX)/bin/neofetch
	$(INSTALL_FILE) neofetch.1 $(DESTDIR)$(PREFIX)/share/man/man1/neofetch.1
	$(INSTALL_PROG) ascii/distro/* $(DESTDIR)$(PREFIX)/share/neofetch/ascii/distro
	$(INSTALL_PROG) functions/info/* $(DESTDIR)$(PREFIX)/share/neofetch/functions/info
	$(INSTALL_PROG) config/config $(DESTDIR)$(PREFIX)/share/neofetch/config

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/neofetch
	$(RM) $(DESTDIR)$(PREFIX)/share/man/man1/neofetch.1
	$(RM) -r $(DESTDIR)$(PREFIX)/share/neofetch


