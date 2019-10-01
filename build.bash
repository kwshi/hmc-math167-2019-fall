#!/bin/bash

set -x

for f in */*.tex
do tectonic "$f"
done

git add --force */*.pdf
git -c http.extraHeader="Authorization: basic kwshi:$GITHUB_TOKEN" push origin pdfs
