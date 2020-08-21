#!/bin/sh

cd /daten/books/bugbuster-docs/manual

# gitbook install banner_bundle/
gitbook build stardate_bundle/

html5validator --root stardate_bundle/_book/ --ignore "gitbook/plugins"
