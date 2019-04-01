#!/bin/bash

mkdir -p icons

for f in papers/*.pdf
do
	g="${f/papers/papers/icons}"
	g="images/${g/.pdf/}_pages.png"
	if [[ -e "$g" ]]
	then
		echo "$g exists, skipping.."
	else
		echo "Processing $f.."
		echo ./multipagethumb.sh "$f" "$g"
		./multipagethumb.sh "$f" "$g"
	fi
done
