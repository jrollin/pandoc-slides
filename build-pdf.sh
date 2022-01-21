#!/bin/bash

DIST=./pdf

# cleanup before new convertion
if  [ ! -d $DIST ]
then
    mkdir $DIST
else
    rm -rf $DIST/*
fi

SRC=./src

# trick : copy src to remove unwanted chars 
cp $SRC/index.md $DIST/cleaned-pdf.md
# remove --- and ignore 16 first lines (header infos)
sed -i '16,$s/^---//' $DIST/cleaned-pdf.md

# convert
pandoc \
    $DIST/cleaned-pdf.md \
    --highlight-style theme/my.theme  \
    --resource-path=$SRC -s \
    -o $DIST/slides.pdf \
    --pdf-engine=xelatex \
    -V subparagraph \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    # -V mainfont="DejaVu Serif" \
    # -V monofont="DejaVu Sans Mono" \

# cleanup
rm $DIST/cleaned-pdf.md
 
echo "done"
