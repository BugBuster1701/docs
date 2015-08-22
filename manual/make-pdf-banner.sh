#!/bin/sh

cd /daten/books/bugbuster-docs/manual

cp banner/cover_de.jpg banner/cover.jpg
gitbook pdf   banner/ ./user-guide-banner-temp.pdf
mv user-guide-banner-temp_de.pdf user-guide-banner_de.pdf
cp banner/cover_en.jpg banner/cover.jpg
gitbook pdf   banner/ ./user-guide-banner-temp.pdf
mv user-guide-banner-temp_en.pdf user-guide-banner_en.pdf
rm user-guide-banner-temp_de.pdf
rm banner/cover.jpg
