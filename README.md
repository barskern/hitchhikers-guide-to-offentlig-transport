# A Hitchhikers Guide to Offentlig Transport

## Prerequisites

- [`make`](https://www.gnu.org/software/make/) - _optional, but simplifies the process_
- [`pandoc`](http://pandoc.org/installing.html)
- [`pandoc-citeproc`](https://github.com/jgm/pandoc-citeproc)

NB! For MacOS and Linux, these programs can be found in the package repositories. For Windows it might be the easiest to install [Chocolatey](https://chocolatey.org/).

## Generating a PDF

To generate a PDF all that has to be done is:

```
make
```

As an alternative, one could also run a pure `pandoc` command as its specified in the `Makefile`, which would look something like:

```
pandoc --toc --toc-depth 2 --standalone --number-sections --template ressurser/template.latex --filter pandoc-fignos --filter pandoc-eqnos --filter pandoc-tablenos --filter pandoc-citeproc --pdf-engine=xelatex --metadata fignos-cleveref --metadata xnos-number-sections --metadata reference-section-title:Referanser --metadata papersize:letter --metadata classoption:oneside --metadata documentclass:article --metadata secnumdepth:2 prosjektoppgave.md -o build/prosjektoppgave.pdf
```
