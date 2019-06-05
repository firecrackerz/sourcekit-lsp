prefix ?= /usr/local
bindir = $(prefix)/bin
libdir = $(prefix)/lib

build:
	swift build -c release --disable-sandbox

install: build
	install ".build/release/sourcekit-lsp" "$(bindir)"

uninstall:
	rm -rf "$(bindir)/sourcekit-lsp"

clean:
	rm -rf .build

.PHONY: build install uninstall clean
