# Installation von: Add Language To Url

Es gibt derzeit mehrere Arten der Installation, hier ein kurzer Überblick.

Link zu Packagist: [Add Language To Url auf Packagist.org](https://packagist.org/packages/bugbuster/contao-lang_to_url)<br>

## Installation über Composer Client

Ist der Composer Client (Paketverwaltung) installiert in Contao, dort suchen nach ```bugbuster/contao-lang_to_url```, die gewünschte Version wählen und installieren. 
Abhängigkeiten gibt es derzeit keine.

## Installation über ER2

Nicht möglich, da es keine Veröffentlichung im ER2 geben wird

## Installation manuell

Eine manuelle Installation ist möglich, dazu die [ZIP-Datei](https://github.com/BugBuster1701/contao-lang_to_url/releases) vom GitHub Repository laden und entpacken.

Auf dem Server ein Unterverzeichnis ```lang_to_url``` anlegen im Verzeichnis ```system/modules/``` und den Inhalt des Verzeichnisses ```src``` dort hinein kopieren.

Dadurch sollte z.B. existieren: ```/system/modules/lang_to_url/config/config.php```.

Im Backend über die Systemwartung den Punkt "Internen Cache leeren" markieren und dann auf "Daten bereinigen". Ein Datenbank Update ist nicht nötig. 

