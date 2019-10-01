#!/bin/bash

set -x

for f in */*.tex
do tectonic "$f"
done

git add --force */*.pdf
git push origin pdfs
