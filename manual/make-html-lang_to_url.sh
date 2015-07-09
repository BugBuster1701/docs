#!/bin/sh

cd /daten/books/bugbuster-docs/manual

gitbook build lang_to_url/

html5validator --root lang_to_url/_book/ --ignore "gitbook/plugins"

