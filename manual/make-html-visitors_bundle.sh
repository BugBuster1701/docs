#!/bin/sh

cd /daten/books/bugbuster-docs/manual

# gitbook install visitors_bundle/
gitbook build visitors_bundle/

html5validator --root visitors_bundle/_book/ --ignore "gitbook/plugins"
