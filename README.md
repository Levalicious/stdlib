# stdlib

The Eezo standard library: the `.eezo` modules `#import` brings in (`prelude`, `bool`, `nat`, `list`, `maybe`, `either`,
`pair`, `io` - the IO monad, `stream` - the Lazy-K streams, ...) and, under `tt/`, the typed front end's (`prelude.tt`,
`num.tt`, `byte.tt`, `io.tt` - the IO monad, `stream.tt` - the Lazy-K wrapper, `word.tt`, ...; `eezott -L tt`).

`mk install` puts both under `$PREFIX/share/eezo/stdlib` (PREFIX from the mkroot proto files, `$HOME/.local` by
default), where [eezoc](https://github.com/Levalicious/eezoc) looks for imports (`EEZO_STDLIB` overrides).
CI compiles every module with eezoc and type-checks every tt file with eezott, at the commits `deps.lock` pins.
