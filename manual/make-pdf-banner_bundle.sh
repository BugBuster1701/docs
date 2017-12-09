#!/bin/sh

cd /daten/books/bugbuster-docs/manual

cp banner_bundle/cover_de.jpg banner_bundle/cover.jpg
gitbook pdf   banner_bundle/ ./user-guide-banner_bundle-temp.pdf
mv user-guide-banner_bundle-temp_de.pdf user-guide-banner_bundle_de.pdf
cp banner_bundle/cover_en.jpg banner_bundle/cover.jpg
gitbook pdf   banner_bundle/ ./user-guide-banner_bundle-temp.pdf
mv user-guide-banner_bundle-temp_en.pdf user-guide-banner_bundle_en.pdf
rm user-guide-banner_bundle-temp_de.pdf
rm banner_bundle/cover.jpg
