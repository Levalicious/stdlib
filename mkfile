# Eezo standard library.
# eezoc resolves `#import name` against $PREFIX/share/eezo/stdlib/name.eezo
# (STDLIB_PATH in eezoc/main.c) or a stdlib/ directory next to the importing file.

all:V:
	true

install:V:
	test -n "$PREFIX" || { echo 'set PREFIX (e.g. PREFIX=$HOME/.local mk install)' >&2; exit 1; }
	mkdir -p $PREFIX/share/eezo/stdlib
	cp *.eezo $PREFIX/share/eezo/stdlib/

clean:V:
	true
