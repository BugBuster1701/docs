---
title: "Anlegen der Banner"
description: ""
url: "first-steps/anlegen-der-banner"
weight: 20
---

Aus der Kategorie Übersicht klickt man nun auf Edit (Bleistift) der Kategorie.
Dort entweder auf 'Banner neu' und dann das Pfeil Symbol oder auf das Plus im
Kopf der Kategorie:

![Anlegen eines Banners](../images/banner_backend_banner_neu.de.jpg)

Als erstes muss nun die Banner Quelle gewählt werden:

* interner Banner (Grafik Datei liegt auf dem Server)
* externer Banner (Grafik Datei wird über URL eingebunden)
* Text Banner

Bei der Auswahl kommen die entsprechenden passenden Formularfelder dafür.


### Grafik Banner

1. Banner Name
    * Der Banner Name wird in der Banner Übersicht angezeigt und im
    mitgelieferten Template unterhalb der Banner Grafik angezeigt.
2. Banner Gewichtung
    * Damit kann die Häufigkeit der Anzeige gesteuert werden. Je höher die
    Gewichtung desto häufiger wird dieser Banner angezeigt.
3. Banner Kommentar
    * Die erste Zeile wird als "title" Tag im HTML Quellcode eingebaut und
    angezeigt, wenn man den Mauszeiger über die Banner Grafik bewegt.
4. Überschreiben mit Metadaten der Datei
    * Damit kann aktiviert werden, dass der Alt-Tag und der Title-Tag durch die Metadaten der Datei 
    aus der Dateiverwaltung gefüllt werden, sofern vorhanden.
5. Banner Ziel URL
    * Die URL des Zieles bei Klick auf die Banner Grafik. Die Eingabe muss
    inklusive http:// erfolgen.
    * Kein Pflichtfeld.
    * Ohne URL wird die Banner Grafik ohne Verlinkung angezeigt.
    * Alternative kann auch ein internes Ziel ausgewählt werden (Banner Ziel Seite )
6. Banner Datei
    * Hier kann nun die Datei ausgewählt werden.
7. Banner Breite und Höhe sowie der Skalierungsmodus
    * Um die Bannergröße anzupassen, kann man hier die Bannerbreite und/oder die
    Bannerhöhe in Pixel angeben.
    * **ACHTUNG:** Animierte GIFs werden bei Größen-Angaben durch die
    GD-Neuberechnung leider zum Standbild.
8. Domain Filter
    * Mit Angabe einer Domain, wird dieser Banner nur für diese Domain genutzt.
9. CSS-ID/Klasse
    * ID und beliebig viele Klassen für das Wrapper Element.
    Ein Präfix "banner_" wird automatisch hinzugefügt.
10. Veröffentlicht
    * Solange diese Option nicht aktiviert ist, wird dieser Banner nicht für
    die Anzeige berücksichtigt.
11. Begrenzung der Views und Klicks
    * Definition maximale Views und/oder Klicks


### Text Banner

1. Banner Name
    * Der Banner Name wird in der Banner Übersicht angezeigt und im
    mitgelieferten Template als Überschrift, die gleichzeitig mit der Ziel URL
    verlinkt wird.
2. Banner Gewichtung
    * Damit kann die Häufigkeit der Anzeige gesteuert werden. Je höher die
    Gewichtung desto häufiger wird dieser Banner angezeigt.
3. Banner Kommentar
    * Dies wird die Textzeile. (2. Zeile, siehe Bild weiter oben)
4. Banner Ziel URL
    * Die URL des Zieles bei Klick. Die Eingabe muss inklusive http:// erfolgen.
    Kein Pflichtfeld.
    * Ohne URL wird der Banner ohne Verlinkung angezeigt.
    * Im mitgelieferten Template wird nur die Domain als Kurzform angezeigt.
    (3. Zeile, siehe Bild weiter oben)
5. Domain Filter
    * Mit Angabe einer Domain, wird dieser Banner nur für diese Domain genutzt.
6. CSS-ID/Klasse
    * ID und beliebig viele Klassen für das Wrapper Element.
    Ein Präfix "banner_" wird automatisch hinzugefügt.
7. Veröffentlicht
    * Solange diese Option nicht aktiviert ist, wird dieser Banner nicht für
    die Anzeige berücksichtigt.
8. Begrenzung der Views und Klicks
    * Definition maximale Views und/oder Klicks

