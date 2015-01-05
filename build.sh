#!/bin/bash

BUILD_OPTS="-xelatex -f-"

if [ $1 == '-a' ]; then
    TEXFILES="$(ls *.tex)"
    for TEXFILE in $TEXFILES; do
        latexmk $BUILD_OPTS $TEXFILE
    done
else
    TEXFILE=$1.tex
    if [ -f $TEXFILE ]; then
        latexmk $BUILD_OPTS $TEXFILE
    fi
fi

