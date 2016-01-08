bib: approx
title: Annotated Bibliography on Approximate Computing
cite style: numeric
bib search url:
js footer:
  var t = document.querySelector(".titleblock .title");
  t.innerHTML = t.textContent.replace(" on ", "<br>on ");

[TITLE]

This is an annotated bibliography on the topic of *approximate computing*. It's a collaborative, open-source project: to contribute, see its [home on GitHub][approxbib-gh].

~ HtmlOnly
You can also download [the BibTeX citation database][bib], read [a PDF version of this document][pdf], or view [the raw Markdown][md].
~

[approxbib-gh]: https://github.com/sampsyo/approxbib
[bib]: approx.bib
[pdf]: index.pdf
[md]: index.md


```bibtex
% Venue shorthands.

@string{pldi = {{ACM} Conference on Programming Language Design and
    Implementation (PLDI)}}
```


EnerJ
=====

EnerJ is a type system [@enerj].

    @inproceedings{enerj,
     author = {Sampson, Adrian and Dietl, Werner and Fortuna, Emily and Gnanapragasam, Danushen and Ceze, Luis and Grossman, Dan},
     title = {{EnerJ}: {Approximate} data types for safe and general low-power computation},
     booktitle = pldi,
     year = {2011},
     url = {http://homes.cs.washington.edu/~asampson/media/papers/enerj-pldi2011.pdf},
     doi = {10.1145/1993316.1993518},
    }

[BIB]
