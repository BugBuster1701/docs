## Sonderfall: mehrere Banner Module pro Seite

Hier einige Hinweise und Tipps für bekannte Anwendungsszenarien und deren Besonderheiten.


### Eine Kategorie - Zwei Frontend Module auf einer Seite

In der aktuellen Version gibt es die Möglichkeit alle Banner einer Kategorie anzuzeigen.
Die alte Variante, mehrere Banner auf einer Webseite anzeigen zu können, war,
mehrere Frontend Module anzulegen und in die Webseite einzubinden. Vom Modul wird
dabei verhindert, dass ein Banner nicht mehrmals angezeigt wird.

Nun wurde davon ausgegangen, dass alle untereinander angezeigt werden, wodurch es
Sinn machte, die Modul Überschrift nur einmal anzuzeigen. Will man nun aber bei
allen Banner Frontend Modulen die Überschrift anzeigen lassen, weil diese z.B.
auf der Seite verteilt sind, muss hierzu eine kleine Anpassung am Template
vorgenommen werden. Dazu legt man über das Backend eine Kopie des Templates
"mod_banner_list_all" an und nennt es dabei um, z.B. in "mod_banner_list_special"
(die Endung wird automatisch angehangen, so wie beim Original).
Dort ändert man nun die dritte Zeile wie folgt:<br>
Original:

```php
<?php if (($this->headline) && (!$this->headline_stop)): ?>
```

Spezial:

```php
<?php if ($this->headline) : ?>
```

Nun die Banner Frontend Module editieren und das neue Template auswählen.<br>
Fertig.<br>
Das gilt natürlich auch für mehr als zwei Frontend Module.


### Zwei Kategorien - Zwei Frontend Module auf einer Seite

Hier hat jedes Frontend Modul seine eigene Kategorie. Auch hier wird aber
trotzdem nur beim ersten Modul die Überschrift angezeigt aus den selben Gründen
wie im Abschnitt zuvor. Falls in diesem Szenario auch alle Modul Überschriften
angezeigt werden sollen, ist die Lösung dieselbe.

Das gilt natürlich auch für mehr als zwei Kategorien und Frontend Module.
