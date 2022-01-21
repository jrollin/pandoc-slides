
# About

Skeleton to build slides 


## tools

* [revealjs](https://revealjs.com/) for html slides
* [Pandoc](https://pandoc.org/installing.html#linux) for generating markdown to slides and pdf

> nb: 2.9.2.2+ for revealjs 4.2.1

### Linux Deps

`sudo apt install texlive texlive-latex-base texlive-fonts-recommended texlive-latex-extra`

Rq: To use docker image instead of pandoc package

alias pandoc='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) pandoc/latex'


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