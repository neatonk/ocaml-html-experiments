# OCaml HTML Experiments

This repo is home to various experiments which use OCaml to generate HTML. The
goal of these experiments is to identify useful ways of exploiting the OCaml
type system when generating HTML in order to make strong guarantees about the
structure of the result.

## Setup

To build and run the examples in this repository you must first [install][]
OCaml and OPAM. The examples are built using [jbuilder][] which can be installed
using OPAM. E.g. `opam install jbuilder`.

[install]: http://ocaml.org/docs/install.html
[jbuilder]: https://github.com/janestreet/jbuilder

## Demo

To build and run the `hello` example:

```sh
jbuilder build hello
jbuilder exec hello
```

If all goes well, the generated HTML will be printed to `stdout`.

## Roadmap

TODO

## License

Distributed under the ISC license.

See [LICENSE][].

[LICENSE]: LICENSE
