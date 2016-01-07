Annotated Bibliography on Approximate Computing
===============================================

This is a nascent attempt to gather the literature on *approximate computing* into one handy, reusable repository.


Contributing
------------

To expand the bibliography, please fork [this repository on GitHub][approxbib-gh] and open a pull request. There are two files you'll need to edit to add a new reference:

- [`approx.bib`][bib], the BibTeX database of citation data.
- [`index.md`][md], the human-readable document that organizes and annotates the citations.

Style guidelines are forthcoming.

[approxbib-gh]: https://github.com/sampsyo/approxbib
[bib]: https://github.com/sampsyo/approxbib/blob/master/approx.bib
[md]: https://github.com/sampsyo/approxbib/blob/master/index.md


Building
--------

The Markdown document renders via Daan Leijen's [Madoko][]. If you have [Node][] and [npm][] installed, you can just type `make` to build both an HTML version and a PDF version via LaTeX. The latest HTML rendering is automatically [hosted online][approxbib].

[approxbib]: http://approximate.computer/approxbib/
[npm]: https://www.npmjs.com/
[Node]: https://nodejs.org/
[Madoko]: https://www.madoko.net/


Inspirations
------------

I was inspired to start an open-source, collaborative, GitHub-hosted bibliography by a few other projects: the one by Sam Tobin-Hochstadt on [gradual typing][gt], another on [deep learning][dl], and a third on [multicast TCP][mt].

[mt]: https://github.com/obonaventure/mptcp-bib
[gt]: https://github.com/samth/gradual-typing-bib
[dl]: https://github.com/memkite/DeepLearningBibliography


License
-------

This annotated bibliography is made available under the [Creative Commons Attribution 4.0 International][cc-by] license. This means you can do almost anything with it as long as you properly attribute the original source.

[cc-by]: http://creativecommons.org/licenses/by/4.0/
