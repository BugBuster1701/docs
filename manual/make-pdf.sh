#!/bin/sh

cd /daten/books/bugbuster-docs/manual

cp visitors/cover_de.jpg visitors/cover.jpg
gitbook pdf   visitors/ ./user-guide-visitors-temp.pdf
mv user-guide-visitors-temp_de.pdf user-guide-visitors_de.pdf
cp visitors/cover_en.jpg visitors/cover.jpg
gitbook pdf   visitors/ ./user-guide-visitors-temp.pdf
mv user-guide-visitors-temp_en.pdf user-guide-visitors_en.pdf
rm user-guide-visitors-temp_de.pdf
rm visitors/cover.jpg

