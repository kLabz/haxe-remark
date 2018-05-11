# Haxe Remark (WIP)

This library provides externs for the [`remark`][remark] javascript library, a markdown parser with plugin support and markdown AST.

> **remark** is an ecosystem of plugins for processing markdown.
> It’s not another markdown to HTML compiler.  It can generate
> and reformat markdown too.  Powered by plugins to do
> all kinds of things: [check markdown code style][remark-lint],
> [transform safely to React][remark-react],
> [add a table of contents][remark-toc], or
> [compile to man pages][remark-man].

The first goal will be to cover the whole [`remark-parse`][remark-parse] API, including [`unified`][unified], [`mdast`][mdast] and [`unist`][unist] (note: these will probably be split into several libs later).

A long term goal would be to progressively reimplement the parser in pure haxe, and work with all haxe platforms.

<!-- Definitions -->

[remark]: https://github.com/remarkjs/remark

[remark-parse]: https://github.com/remarkjs/remark/tree/master/packages/remark-parse

[remark-lint]: https://github.com/remarkjs/remark-lint

[remark-react]: https://github.com/mapbox/remark-react

[remark-toc]: https://github.com/remarkjs/remark-toc

[remark-man]: https://github.com/remarkjs/remark-man

[unified]: https://github.com/unifiedjs/unified

[mdast]: https://github.com/syntax-tree/mdast

[unist]: https://github.com/syntax-tree/unist

