#!/bin/bash

set -x

for f in */*.tex
do tectonic "$f"
done

git add --force */*.pdf
git commit -m 'generate pdfs'
git \
  -c http.extraHeader="Authorization: basic $(printf '%s:%s' kwshi "$GITHUB_TOKEN" | base64)" \
  push origin pdfs
