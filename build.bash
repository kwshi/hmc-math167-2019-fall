#!/bin/bash

set -x

for f in */*.tex
do tectonic "$f"
done

git add --force */*.pdf
git -c http.extraHeader="Authorization: token $GITHUB_TOKEN" push origin pdfs
