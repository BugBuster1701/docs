# Installation von: Enhanced error.log

Es gibt derzeit mehrere Arten der Installation, hier ein kurzer Überblick.

Link zu Packagist: [Enhanced error.log auf Packagist.org][1]
Link zum ER2: [Enhanced error.log im ER2][2]

## Installation über Composer Client

Ist der Composer Client (Paketverwaltung) installiert in Contao, dort suchen
nach ```bugbuster/errorlog_enhanced```, die gewünschte Version wählen und
installieren.
Abhängigkeiten gibt es derzeit keine.


## Installation über ER2

Ist die alte Erweiterungsverwaltung / -katalog noch installiert, im Katalog
nach ```errorlog_enhanced``` suchen und installieren.
Abhängigkeiten gibt es derzeit keine.


## Installation manuell

Eine manuelle Installation ist möglich, dazu die [ZIP-Datei][2] vom Extension
Repository laden, entpacken und entsprechend übertragen.

Dadurch sollte dann z.B. existieren: ```/system/modules/errorlog_enhanced/config/config.php```.

Im Backend über die Systemwartung den Punkt "Internen Cache leeren" markieren
und dann auf "Daten bereinigen". Ein Datenbank Update ist nicht nötig.


[1]: https://packagist.org/packages/bugbuster/errorlog_enhanced
[2]: https://contao.org/de/erweiterungsliste/view/errorlog_enhanced.de.html
