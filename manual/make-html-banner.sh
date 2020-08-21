#!/bin/sh

cd /daten/books/bugbuster-docs/manual

gitbook build banner/

html5validator --root banner/_book/ --ignore "gitbook/plugins"
