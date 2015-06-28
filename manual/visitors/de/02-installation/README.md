# Installation von Visitors

Es gibt derzeit mehrere Arten der Installation, hier ein kurzer Überblick.

**Hinweis:** Visitors ist abhängig von den Erweiterungen "Bot Detection" und "Excel 95 Erzeuger (xls_export)", diese werden in den meisten Fällen automatisch mit installiert.

Link zu Packagist: [Visitors auf Packagist.org](https://packagist.org/packages/bugbuster/visitors)<br>
Link zum ER2: [Visitors im ER2](http://www.contao.org/de/erweiterungsliste/view/visitors.html)

## Installation über Composer Client

Ist der Composer Client (Paketverwaltung) installiert in Contao, dort suchen nach ```bugbuster/visitors```, die gewünschte Version wählen und installieren. Die Abhängigkeiten werden automatisch mit installiert.

## Installation über ER2

Ist die alte Erweiterungsverwaltung / -katalog noch installiert, im Katalog nach ```Visitors``` suchen und installieren. Die Abhängigkeiten werden automatisch mit installiert.

## Installation manuell

Eine manuelle Installation ist möglich, dazu die [ZIP-Datei](https://www.contao.org/de/erweiterungsliste/view/visitors.html) vom Extension Repository laden, entpacken und entsprechend übertragen.

Dadurch sollte ein Verzeichnis ```/system/modules/visitors``` angelegt worden sein.
Danach wie dabei üblich ```/contao/install.php``` Aufrufen - Update Database durchführen.

**Achtung:** Die Abhängigkeiten müssen dann ebenfalls manuell installiert werden!
