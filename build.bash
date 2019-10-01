#!/bin/bash

git merge master --msg 'merge'

for f in */*.tex
do tectonic "$f"
done

git add --force */*.pdf
git push origin pdfs
