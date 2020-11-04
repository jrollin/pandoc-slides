#!/bin/bash

# check reveal js lib is downloaded
REVEAL_SRC=./revealjs
REVEAL_TAG=3.8.0
if [ ! -d $REVEAL_SRC ]
then
    wget https://github.com/hakimel/reveal.js/archive/$REVEAL_TAG.tar.gz
    tar -xzvf $REVEAL_TAG.tar.gz
    mv reveal.js-$REVEAL_TAG $REVEAL_SRC
    rm $REVEAL_TAG.tar.gz
fi

DIST=./dist
[ -d $DIST ] || mkdir $DIST

THEME_DIR=./theme

directories=( src )
for i in "${directories[@]}"
do
    echo "$i"
    if  [ -d $DIST/$i ]
    then
        rm -rf $DIST/$i 
    fi
    mkdir $DIST/$i    
    
    # copy img, theme assets
    cp -R $i/img $DIST
    cp -R $REVEAL_SRC $DIST
    cp $THEME_DIR/reveal.css $DIST
    # convert to reveal
    pandoc -t revealjs -s \
        --highlight-style $THEME_DIR/my.theme \
        -o $DIST/index.html $i/index.md  \
        -V revealjs-url=$REVEAL_SRC \
        --slide-level=2 \
        --css ./reveal.css \
        -V theme=league
    # docker run -v $PWD:/source --rm jrollin/pandoc-docker -t revealjs -s --highlight-style $THEME_DIR/my.theme  -o $DIST/$i/$i.html $i/$i.md  -V revealjs-url=$REVEAL_SRC --slide-level=2 --css ./reveal.css -V theme=league
done
echo "done"



