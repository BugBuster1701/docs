#!/bin/bash

rm -r cookbook-tdd/_book
sync
sleep 1

gitbook build cookbook-tdd/
if [ $? -eq 0 ]
then
  echo "Kochbuch: Testgetriebene Entwicklung HTML generiert"
else
  echo "Problem beim generieren HTML"
  exit 
fi

sync
sleep 1
html5validator --root cookbook-tdd/_book/ --ignore "gitbook/plugins"
if [ $? -eq 0 ]
then
  echo "Kochbuch: Testgetriebene Entwicklung auf HTML geprüft"
else
  echo "Problem beim HTML Validator"
  exit
fi

sync
sleep 1
gitbook pdf     cookbook-tdd/ ./cookbook-tdd.pdf
if [ $? -eq 0 ]
then
  echo "Kochbuch: Testgetriebene Entwicklung PDF generiert"
else
  echo "Problem beim generieren PDF"
  exit
fi
