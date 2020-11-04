#!/bin/bash

DIST=./pdf
[ -d $DIST ] || mkdir $DIST

directories=( src )
for i in "${directories[@]}"
do
    echo "$i"
   
    # copy src to remove unwanted chars 
    cp $i/index.md $DIST/index-pdf.md
    # remove --- and ignore 16 first lines (header infos)
    sed -i '16,$s/^---//' $DIST/index-pdf.md

    # convert
    pandoc --highlight-style theme/my.theme  \
        --resource-path=$i \
        -s -o $DIST/index.pdf $DIST/index-pdf.md \
        --pdf-engine=xelatex  \
        -V 'mainfont:DejaVuSerif' \
        -V 'mainfontoptions:Extension=.ttf, UprightFont=*, BoldFont=*-Bold, ItalicFont=*-Italic, BoldItalicFont=*-BoldItalic' \
        -V 'sansfont:DejaVuSans.ttf' \
        -V 'monofont:DejaVuSansMono.ttf' \
        -V 'mathfont:texgyredejavu-math.otf' 

    # cleanup
    rm $DIST/index-pdf.md
 
done
echo "done"
