# Installation der Erweiterung Banner

Es gibt derzeit mehrere Arten der Installation, hier ein kurzer Überblick.

**Hinweis:** Banner ist abhängig von der Erweiterung "Bot Detection", diese wird
in den meisten Fällen automatisch mit installiert.

Link zu Packagist: [Banner auf Packagist.org][1]<br>
Link zum ER2: [Banner im ER2][2]

## Installation über Composer Client

Ist der Composer Client (Paketverwaltung) installiert in Contao, dort suchen nach
`bugbuster/banner`, die gewünschte Version wählen und installieren.
Die Abhängigkeiten werden automatisch mit installiert.

## Installation über ER2

Ist die alte Erweiterungsverwaltung / -katalog noch installiert, im Katalog nach
`Banner` suchen und installieren.
Die Abhängigkeiten werden automatisch mit installiert.


## Installation manuell

Eine manuelle Installation ist möglich, dazu die [ZIP-Datei][2]
vom Extension Repository laden, entpacken und entsprechend übertragen.

Dadurch sollte ein Verzeichnis `/system/modules/banner` angelegt worden sein.
Danach wie dabei üblich `/contao/install.php` Aufrufen - Update Database durchführen.

**Achtung:** Die Abhängigkeiten müssen dann ebenfalls manuell installiert werden!

[1]: https://packagist.org/packages/bugbuster/banner
[2]: https://www.contao.org/de/erweiterungsliste/view/banner.html
