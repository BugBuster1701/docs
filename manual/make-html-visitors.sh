#!/bin/sh

cd /daten/books/bugbuster-docs/manual

gitbook build visitors/

html5validator --root visitors/_book/ --ignore "gitbook/plugins"

