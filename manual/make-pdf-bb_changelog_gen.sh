#!/bin/sh

cd /daten/books/bugbuster-docs/manual

gitbook pdf bb_changelog_gen/ ./user-guide-bb_changelog_gen.pdf

#cp bb_changelog_gen/cover_de.jpg bb_changelog_gen/cover.jpg
#gitbook pdf   bb_changelog_gen/ ./user-guide-bb_changelog_gen-temp.pdf
#mv user-guide-bb_changelog_gen-temp_de.pdf user-guide-bb_changelog_gen_de.pdf
#cp bb_changelog_gen/cover_en.jpg bb_changelog_gen/cover.jpg
#gitbook pdf   bb_changelog_gen/ ./user-guide-bb_changelog_gen-temp.pdf
#mv user-guide-bb_changelog_gen-temp_en.pdf user-guide-bb_changelog_gen_en.pdf
#rm user-guide-bb_changelog_gen-temp_de.pdf
#rm bb_changelog_gen/cover.jpg
