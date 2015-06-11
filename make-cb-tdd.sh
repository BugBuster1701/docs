#!/bin/bash

dialog --backtitle "Make Cookbook TDD, 2015 BugBuster" --title "Frage" --yesno "Soll ein 'git pull' ausgeführt werden?" 5 50
antwort=${?}

if [ "$antwort" -eq "255" ]
  then
    echo "Abgebrochen"
    exit 255
fi

if [ "$antwort" -eq "0" ]
then
  git pull
fi

rm -r cookbook-tdd/_book
sync

gitbook build cookbook-tdd/
if [ $? -eq 0 ]
then
  echo "Kochbuch: Testgetriebene Entwicklung HTML generiert"
else
  echo "Problem beim generieren HTML"
  exit 
fi

sync
html5validator --root cookbook-tdd/_book/ --ignore "gitbook/plugins"
if [ $? -eq 0 ]
then
  echo "Kochbuch: Testgetriebene Entwicklung auf HTML geprüft"
else
  echo "Problem beim HTML Validator"
  exit
fi

sync
gitbook pdf     cookbook-tdd/ ./cookbook-tdd.pdf
if [ $? -eq 0 ]
then
  echo "Kochbuch: Testgetriebene Entwicklung PDF generiert"
else
  echo "Problem beim generieren PDF"
  exit
fi

