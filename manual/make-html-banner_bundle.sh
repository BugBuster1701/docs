#!/bin/sh

cd /daten/books/bugbuster-docs/manual

# gitbook install banner_bundle/
gitbook build banner_bundle/

html5validator --root banner_bundle/_book/ --ignore "gitbook/plugins"
