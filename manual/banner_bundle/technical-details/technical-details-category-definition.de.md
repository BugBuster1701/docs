---
title: "Feinheiten Kategorie Definition"
description: ""
url: "technical-details/feinheiten-kategorie-definition"
weight: 10
---

### Angaben zum Defaultbanner

Damit können Sie eine Bannerdatei auswählen, die angezeigt wird, wenn kein Banner in der Kategorie aktiv ist. 
Eine Auswahl hat Vorrang vor der Modul Definition "Ausblenden, wenn leer".


### Anzeige Definition

* Alle Banner anzeigen

Wenn diese Option gewählt ist, werden alle aktiven Banner der Kategorie angezeigt
im Frontend, statt nur eines. Zusätzlich kann dann noch ausgewählt werden:

* Anzahl limitieren

Hier kann die Anzahl noch begrenzt werden. Default ist 0: alle Banner anzeigen,
sonst die maximale Anzahl der Banner die angezeigt werden sollen.

* Zufällige Reihenfolge

Nun werden die Banner zusätzlich in zufälliger Reihenfolge angezeigt.


### Anzeige der Statistik

* Schutz der Statistik

Den Inhalt der Bannerstatistik kann damit nur bestimmten Gruppen im Backend
angezeigt werden.
Administratoren haben uneingeschränkten Zugriff auf alle Bannerstatistiken.


### Experteneinstellungen

* Debugmodus für alle "Banner" Klassen

Durch den Debugmodus werden Laufzeitinformationen in die Logdatei (var/logs/prod-Y-M-D-banner_debug.log) geschrieben.

Das sollte nur nach Aufforderung durch den Entwickler, z.B. für eine Fehlersuche, aktiviert werden.
