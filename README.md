
# About

Skeleton to build slides 


## tools

* [revealjs](https://revealjs.com/) for html slides
* [Pandoc](https://pandoc.org/installing.html#linux) for generating markdown to slides and pdf


### Linux Deps

`sudo apt install texlive texlive-latex-base texlive-fonts-recommended texlive-latex-extra`

> @todo: use container for easier process


## Howto

Slides sources in `src/index.md`


### Generate Slides


```bash
./build-slides.sh
```
ouptut in `/dist`


### Generate PDF

```bash
./build-pdf.sh
```

output in `/pdf`