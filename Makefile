SUDO = sudo
# SUDO = doas

default:
	@printf "Run 'make install' to install or update rwall\n"

install:
	@$(SUDO) install rwall /usr/bin/rwall

	@[ -e ~/.config/rwall.yml ] || [ -e ~/.config/rwall.yaml ] || install -m 644 rwall.yml ~/.config/rwall.yml

uninstall:
	@$(SUDO) rm -f /usr/bin/rwall
