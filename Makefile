DESTDIR=
INSTALL_DIR=$(DESTDIR)/usr/bin
BUILD_DIR=./build
NAME=stdin2swift

all:
	mkdir -p $(BUILD_DIR)
	sed -s 's/@@VERSION@@/$(shell git describe --tags --long)/' $(NAME) > $(BUILD_DIR)/$(NAME)

install: all
	mkdir -p $(INSTALL_DIR)
	cp $(BUILD_DIR)/$(NAME) $(INSTALL_DIR)
	chmod 755 $(INSTALL_DIR)/$(NAME)

uninstall:
	rm -rf $(INSTALL_DIR)/$(NAME)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all install clean
