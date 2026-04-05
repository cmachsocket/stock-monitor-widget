NAME := com.vps.stockmonitor
INSTALL_DIR := $(HOME)/.local/share/plasma/plasmoids/$(NAME)

install: clean
	cp -r . $(INSTALL_DIR)

clean:
	rm -rf $(INSTALL_DIR)

run : install
	plasmoidviewer --applet $(INSTALL_DIR)