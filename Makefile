SUDO = sudo
# SUDO = doas

default:
	@printf "Run 'make install' to install rwall\n"

install:
	@$(SUDO) install rwall /usr/bin/rwall
	@install -m 644 rwall.yml ~/.config/rwall.yml

uninstall:
	@$(SUDO) rm -f /usr/bin/rwall
