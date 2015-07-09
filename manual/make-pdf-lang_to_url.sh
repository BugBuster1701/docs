#!/bin/sh

cd /daten/books/bugbuster-docs/manual

cp lang_to_url/cover_de.jpg lang_to_url/cover.jpg
gitbook pdf   lang_to_url/ ./user-guide-lang_to_url-temp.pdf
mv user-guide-lang_to_url-temp_de.pdf user-guide-lang_to_url_de.pdf
cp lang_to_url/cover_en.jpg lang_to_url/cover.jpg
gitbook pdf   lang_to_url/ ./user-guide-lang_to_url-temp.pdf
mv user-guide-lang_to_url-temp_en.pdf user-guide-lang_to_url_en.pdf
rm user-guide-lang_to_url-temp_de.pdf
rm lang_to_url/cover.jpg

