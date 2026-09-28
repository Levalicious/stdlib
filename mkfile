# Eezo standard library: the eezo modules (#import name) and, under tt/, the typed front end's (eezott -L).
# eezoc resolves `#import name` against $EEZO_STDLIB, else $PREFIX/share/eezo/stdlib/name.eezo (the path compiled into it
# from the same PREFIX), else a stdlib/ directory next to the importing file.
<$MKROOT/$objtype/mkfile

all:V:
	true
install:V:
	mkdir -p $PREFIX/share/eezo/stdlib/tt
	cp *.eezo $PREFIX/share/eezo/stdlib/
	cp tt/*.tt $PREFIX/share/eezo/stdlib/tt/
clean:V:
	true
