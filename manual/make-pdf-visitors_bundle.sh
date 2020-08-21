#!/bin/sh

cd /daten/books/bugbuster-docs/manual

cp visitors_bundle/cover_de.jpg visitors_bundle/cover.jpg
gitbook pdf   visitors_bundle/ ./user-guide-visitors_bundle-temp.pdf
mv user-guide-visitors_bundle-temp_de.pdf user-guide-visitors_bundle_de.pdf
cp visitors_bundle/cover_en.jpg visitors_bundle/cover.jpg
gitbook pdf   visitors_bundle/ ./user-guide-visitors_bundle-temp.pdf
mv user-guide-visitors_bundle-temp_en.pdf user-guide-visitors_bundle_en.pdf
rm user-guide-visitors_bundle-temp_de.pdf
rm visitors_bundle/cover.jpg
