#!/bin/sh

cd /daten/books/bugbuster-docs/manual

gitbook build bb_changelog_gen/

html5validator --root bb_changelog_gen/_book/ --ignore "gitbook/plugins"
