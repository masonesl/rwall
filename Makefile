default:
	@printf "Run 'make install' to install rwall\n"

install:
	@install rwall /usr/bin/rwall

uninstall:
	@rm -f /usr/bin/rwall
