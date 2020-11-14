#!/bin/sh

NOTESDIR=~/.notes
TODAYFILE=$NOTESDIR/$(date +"%Y%m%d").md

DATE=$(date +"%B %d, %Y")

[ -f "$TODAYFILE" ] || echo "# $DATE" > $TODAYFILE

#git --git-dir $NOTESDIR pull

echo $TODAYFILE
