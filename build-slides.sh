#!/bin/bash

REVEAL_TAG=4.1.0
REVEAL_SRC=./revealjs
THEME_DIR=./theme
SRC_DIR=./src
DIST=./dist


# check reveal js lib is downloaded
if [ ! -d $REVEAL_SRC ]
then
    wget https://github.com/hakimel/reveal.js/archive/$REVEAL_TAG.tar.gz
    tar -xzvf $REVEAL_TAG.tar.gz
    mv reveal.js-$REVEAL_TAG $REVEAL_SRC
    rm $REVEAL_TAG.tar.gz
fi

# cleanup before new convertion
if  [ ! -d $DIST ]
then
    mkdir $DIST
else
    rm -rf $DIST/*
fi


if [ ! -d $DIST/img ]
then
    mkdir -p $DIST/img
fi

if [ ! -d $DIST/revealjs ]
then
    mkdir -p $DIST/revealjs
fi

# copy img, theme assets
cp -R $SRC_DIR/img $DIST
cp -R $REVEAL_SRC $DIST
cp $THEME_DIR/reveal.css $DIST

# convert to reveal
pandoc -t revealjs -s \
    --highlight-style $THEME_DIR/my.theme \
    -o $DIST/index.html $SRC_DIR/index.md  \
    --slide-level=2 \
    --css ./reveal.css \
    --mathjax \
    -V revealjs-url=$REVEAL_SRC \
    -V theme=league \
    --template=./theme/template-revealjs.html.template

# docker run -v $PWD:/source --rm jrollin/pandoc-docker \
#     -t revealjs -s \
#     --highlight-style $THEME_DIR/my.theme \
#     -o $DIST/index.html $SRC_DIR/index.md  \
#     --slide-level=2 \
#     --css ./reveal.css \
#     --mathjax \
#     -V revealjs-url=$REVEAL_SRC \
#     -V theme=league \
#     --template=./theme/template-revealjs.html.template

echo "Converted !"



