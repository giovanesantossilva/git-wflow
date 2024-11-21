prefix=/usr/local

EXEC_FILES=git-wflow
SCRIPT_FILES=git-wflow-feature

all:
	@echo "usage: make install"
	@echo "       make uninstall"
	
install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES)