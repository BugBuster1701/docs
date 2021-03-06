## Feinheiten Banner-Definition


### Flash Fallback Bild

Hat ein Browser kein Flash-Plugin installiert oder ist JavaScript inaktiv oder
ist bedingt durch die Hardware kein Flash möglich, kann ab Version 2.2.0 ein
Bild statt dessen angezeigt werden. Es wird bei einer lokalen (internen) Flash
Datei im selben Pfad eine Bilddatei gesucht mit dem selben Namen, aber mit der
Endung jpg, png oder gif.

Beispiel: für "meinflash.swf" wäre ein passendes Fallback Bild: "meinflash.jpg"
Ist nun ein solches Ersatzbild zu finden, wird das Bild statt dessen angezeigt.
Es wird dabei auf die definierten Abmaße der Flashdatei umgerechnet falls nötig.


### Begrenzung mittels Start- Stop- Datumsangaben und Uhrzeit

* Anzeigen ab
  * Wenn man hier Datum mit Uhrzeit erfasst, wird dieser Banner erst ab diesem
  Zeitpunkt angezeigt. Die gesetzte Uhrzeit kann überschrieben werden.
  Beispiel: 24.12.2007 20:15
* Anzeigen bis
  *  Wenn man hier Datum mit Uhrzeit erfasst, wird dieser Banner nur bis zu
  diesem Zeitpunkt angezeigt. Die gesetzte Uhrzeit kann überschrieben werden.
  Beispiel: 24.12.2007 23:59


### Begrenzung der Views / Klicks

* Begrenzung der Views und Klicks

Wenn man diese Option wählt, können in zwei weiteren Feldern eine maximale View
Anzahl und/oder maximale Klick Anzahl definiert werden.

* Begrenzung der View Anzahl
  * Wenn man hier eine Zahl eingibt, wird dieser Banner nach dieser Anzahl von
  Views nicht mehr angezeigt. Die Option "Begrenzung der Views und Klicks" muss
  dabei aktiviert bleiben.
* Begrenzung der Klick Anzahl
  * Wenn Sie hier eine Zahl eingeben, wird dieser Banner nach dieser Anzahl von
  Klicks nicht mehr angezeigt. Die Option "Begrenzung der Views und Klicks" muss
  dabei aktiviert bleiben.


### Domain Filter

Wird hier eine Domain eingeben, wird dieser Banner nur für diese Domain genutzt.
Ohne Angabe wird dieser Banner für alle Domains genutzt.<br>
Beispiel: **meinedomain.de**

Dieser Banner wird angezeigt, wenn die Domain übereinstimmt, aber auch bei
Teilübereinstimmung von rechts beginnend. Damit bei diesem Beispiel auch der
Zugriff über "**sub.meinedomain.de**". Ein Eintrag in "Seitenstruktur" -
"Domain Name" ist nicht notwendig für die Filterung.
